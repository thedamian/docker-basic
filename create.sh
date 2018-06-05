docker network create bocajsNET

docker run --name mysql -e MYSQL_ROOT_PASSWORD=bocajsPW -d --network=bocajsNET -v $(pwd)/data:/var/lib/mysql mysql:latest

docker run --name mongodb -d  --network=bocajsNET -p 27017:27017 mongo

docker run --name wp -d --network=bocajsNET -p 8888:80 wordpress

docker run --name nodejs -d --network=bocajsNET -v $(pwd)/app:/usr/src/app  -p 5000:5000  -w /usr/src/app node:latest node app.js

