# dev_framework

## Build 

```sh
docker-compose up --build -d --scale=2
```
http://back.localhost for the application
http://traefik:8080 for Traefik

## Zero Down Time deployement
```sh
docker-compose build
docker-compose scale back=4
sleep 10s
# Stop the oldest container
docker-compose stop "back_1" "back_2"
docker-compose rm "back_1" "back_2"
```

# References 
https://github.com/BastienL/zero-downtime-deployment-with-docker
