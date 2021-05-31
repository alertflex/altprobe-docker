#!/bin/bash

##################################################
# Technical project data for Alertflex collector #
##################################################

# collector
export PROJECT_ID=5a50c6fe-ef05-49b8-9d21-14567b58d4e7
export NODE_ID=node01
export PROBE_ID=collr05

# controller
# url: "ssl://host:61617" or "tcp://host:61616"
export AMQ_URL='tcp:\/\/127.0.0.1:61616'
export AMQ_USER=admin
export AMQ_PWD=Password1234
export AMQ_CERT=indef
export CERT_VERIFY=false
export AMQ_KEY=indef
export KEY_PWD=indef

# sensors:
export FALCO_LOG=indef
export MODSEC_LOG=indef
export SURI_LOG=indef
export WAZUH_LOG='\/var\/ossec\/logs\/alerts\/alerts.json'

export REDIS_HOST=127.0.0.1
export WAZUH_HOST=127.0.0.1
export WAZUH_USER=wazuh
export WAZUH_PWD=wazuh













