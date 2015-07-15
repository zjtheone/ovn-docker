wget -qO- https://experimental.docker.com/ | sh
apt-get install -q -y vim bridge-utils 

echo 'DOCKER_OPTS="--kv-store=consul:localhost:8500 --bridge=docker0"' >> /etc/default/docker

service docker restart
sh /vagrant/clean_all.sh
