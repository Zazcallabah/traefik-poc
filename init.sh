
# init local swarm with one node
docker swarm init

# create both overlay networks
# traefik listens on these for services to route, so use separate to avoid conflicts?
docker network create --driver=overlay traefik-http
docker network create --driver=overlay traefik-tcp

# deploy services
docker stack deploy traefik -c traefik.yml
docker stack deploy traefik2 -c traefik2.yml
docker stack deploy http -c nginx.yml
docker stack deploy tcp -c tcpnginx.yml
