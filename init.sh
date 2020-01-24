docker swarm init
docker network create --driver=overlay traefik-http
docker network create --driver=overlay traefik-tcp

docker stack deploy traefik -c traefik.yml
docker stack deploy traefik2 -c traefik2.yml
docker stack deploy http -c nginx.yml
docker stack deploy tcp -c tcpnginx.yml