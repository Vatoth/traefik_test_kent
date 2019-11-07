# dev_framework

Zero Down Time deployement
```sh
docker-compose scale back=2
sleep 10s
# Stop the oldest container
docker-compose stop "back_1"
docker-compose rm "back_1"
```

# References 
https://github.com/BastienL/zero-downtime-deployment-with-docker
