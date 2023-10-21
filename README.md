DOCKER COMPOSE PROJECT WITH HAPROXY


4 services
HAPROXY
WEBAPP
WEBAPP
WEBAPP

1.You have to create manually docker network

docker create network frontend >>>>> because in docker-compose.yml you have
networks:
  frontend:
    external: 
      name: frontend


2.docker inspect HASH >> for every container

3.Fill in etc hosts with domain mapping

172.22.0.5  web1.devnotes.it.
172.22.0.2  web2.devnotes.it.
172.22.0.4  web3.devnotes.it.

domain nane mapping has to have "." in the end . remember about that

If you haProxy container has adress 172.22.0.3 it should load balance every of these IP
