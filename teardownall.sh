# Bring down containers
docker-compose -f docker-compose-cli.yaml -f docker-compose-etcdraft2.yaml down -v

# clean up containers
docker rm $(docker ps -aq)

docker rmi $(docker images dev-* -q)