docker service create --name siege-service --replicas $1 --network esle-network --mode replicated-job --mount source=esle-vol,target=/data jcabillot/siege --cpus=0.01 --concurrent=1 --delay=1 --time=1m --log=/data/siege.log http://web-service:80
# Remove after ending
docker service rm siege-service