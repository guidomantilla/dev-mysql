docker container rm -f dev-mysql
docker image rm dev-mysql

docker build . -t dev-mysql

docker container run --detach --restart always --publish 3306:3306 --name dev-mysql dev-mysql
