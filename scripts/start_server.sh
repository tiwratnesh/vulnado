#!/bin/bash
whoami  >> /tmp/vulnado.log
cd ~
docker-compose up >/dev/null 2>&1 &
