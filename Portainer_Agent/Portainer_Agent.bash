#Novos containers docker

apt-get update && apt-get upgrade \
apt-get install docker.io \
curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
chmod +x /usr/local/bin/docker-compose \
docker swarm init; curl -L https://downloads.portainer.io/agent-stack.yml -o agent-stack.yml; \
docker stack deploy --compose-file=agent-stack.yml portainer-agent; \
docker service ls

#Criar novo endpoint no Portainer Host
#Docker Swarm  /   nome do container  /  ip:9001