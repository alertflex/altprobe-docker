# Example of usage:

## create image
docker build -t alertflex/altprobe .

## create volume for altprobe
docker volume create altprobe-volume

## create container (in this example, the altprobe will monitor alerts from the Wazuh manager)
docker create --name altprobe \
-v altprobe-volume:/etc/altprobe \
-v /etc/localtime:/etc/localtime:ro \
-v /etc/timezone:/etc/timezone:ro \
-v /var/ossec/logs/alerts/alerts.json:/var/ossec/logs/alerts/alerts.json:ro \
--network="host" alertflex/altprobe

## fill in project-specific parameters in file `env.sh` and run script 
chmod u+x configure.sh && ./configure.sh

## run container
docker start altprobe
