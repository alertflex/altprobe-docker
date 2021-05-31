#!/bin/bash

source ./env.sh

sudo docker cp altprobe:/etc/altprobe/altprobe.yaml altprobe.yaml
sudo docker cp altprobe:/etc/altprobe/filters.json filters.json

sudo sed -i "s/_project_id/$PROJECT_ID/g" filters.json
sudo sed -i "s/_node_id/$NODE_ID/g" altprobe.yaml
sudo sed -i "s/_probe_id/$PROBE_ID/g" altprobe.yaml
sudo sed -i "s/_redis_host/$REDIS_HOST/g" altprobe.yaml
sudo sed -i "s/_wazuh_host/$WAZUH_HOST/g" altprobe.yaml
sudo sed -i "s/_wazuh_user/$WAZUH_USER/g" altprobe.yaml
sudo sed -i "s/_wazuh_pwd/$WAZUH_PWD/g" altprobe.yaml
sudo sed -i "s/_amq_url/$AMQ_URL/g" altprobe.yaml
sudo sed -i "s/_amq_user/$AMQ_USER/g" altprobe.yaml
sudo sed -i "s/_amq_pwd/$AMQ_PWD/g" altprobe.yaml
sudo sed -i "s/_amq_cert/$AMQ_CERT/g" altprobe.yaml
sudo sed -i "s/_cert_verify/$CERT_VERIFY/g" altprobe.yaml
sudo sed -i "s/_amq_key/$AMQ_KEY/g" altprobe.yaml
sudo sed -i "s/_key_pwd/$KEY_PWD/g" altprobe.yaml
sudo sed -i "s/_falco_log/$FALCO_LOG/g" altprobe.yaml
sudo sed -i "s/_modsec_log/$MODSEC_LOG/g" altprobe.yaml
sudo sed -i "s/_suri_log/$SURI_LOG/g" altprobe.yaml
sudo sed -i "s/_wazuh_log/$WAZUH_LOG/g" altprobe.yaml

sudo docker cp altprobe.yaml altprobe:/etc/altprobe
sudo docker cp filters.json altprobe:/etc/altprobe
FILE=./Broker.pem
if [[ -f "$FILE" ]]; then
    sudo docker cp $FILE altprobe:/etc/altprobe
fi
