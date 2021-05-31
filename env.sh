#!/bin/bash

##################################################
# Technical project data for Alertflex collector #
##################################################

# collector
export PROJECT_ID=xxxxx
export NODE_ID=xxxxx
export PROBE_ID=xxxxx

# controller
# url: "ssl://host:61617" or "tcp://host:61616"
export AMQ_URL='ssl:\/\/xxxxx:61617'
export AMQ_USER=xxxxx
export AMQ_PWD=*****
export AMQ_CERT='\/etc\/altprobe\/Broker.pem'
export CERT_VERIFY=true
export AMQ_KEY=indef
export KEY_PWD=indef

# sources
# if *_LOG is "indef", redis connection will use
export FALCO_LOG=indef
export MODSEC_LOG=indef
export SURI_LOG=indef
export WAZUH_LOG=indef

export REDIS_HOST=127.0.0.1
export WAZUH_HOST=127.0.0.1
export WAZUH_USER=wazuh
export WAZUH_PWD=wazuh













