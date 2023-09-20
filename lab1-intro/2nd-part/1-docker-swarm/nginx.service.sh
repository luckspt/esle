docker service create --name web-service --publish published=8080,target=80 --replicas $1 --network esle-network nginx:latest
