#!/bin/bash
whoami  >> /tmp/vulnado.log
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) -o /usr/bin/docker-compose > /tmp/vulnado.log
sudo chmod +x /usr/bin/docker-compose >> /tmp/vulnado.log
