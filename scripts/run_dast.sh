cd /tmp
whoami  >> /tmp/vulnado.log
sudo docker run -v $(pwd):/zap/wrk/:rw -t owasp/zap2docker-stable zap-baseline.py -t http://$(ip -f inet -o addr show eth0 | awk '{print $4}' | cut -d '/' -f 1):1337/login.html -g gen.conf -r zap_testreport.html  >> /tmp/vulnado.log >/dev/null 2>&1 &
