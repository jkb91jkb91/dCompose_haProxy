DOCKER COMPOSE PROJECT WITH HAPROXY



STEP 1 >>> 2 SEPARATES CONTAINERS  


<b>Dockerfile.haproxy</b>    
  FROM haproxy:2.3  
  COPY /haproxy/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg  

<b>COMMANDS</b>  
docker build -t hape -f Dockerfile.haproxy .  
docker run -d -p 80:8080 --name jes5 hapek  

haproxy.cfg  
global  
    daemon  
    log /srv/logs/haproxy local0  
    log /srv/logs/haproxy local1 notice  
    maxconn 10000 # Przykładowa zmniejszona wartość maxconn  
defaults  
    mode    http  
    timeout connect 5000ms  
    timeout client 50000ms  
    timeout server 50000ms  
    option http-keep-alive  

frontend http-in  
    bind *:80  
    use_backend web1_be  


backend web1_be  
    server 172.17.0.3 172.17.0.3:80   << this is IP of apache container  



