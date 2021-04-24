# Edição Docker - Programa Full Cycle de Aceleração

```
docker network create fullcycle
```
```
docker run --name=fullcycle-mysql --network=fullcycle -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=laravel -p 3306:3306 -d mysql:8
```
Aguardar alguns segundos para que o banco de dados seja criado
```
docker run --name=phpcontainer --network=fullcycle -d marcelocorrea/desafio-docker-php
```
```
docker run --name fullcycle-nginx --network fullcycle -p 8080:80 -d marcelocorrea/desafio-docker-nginx
```

acessar http://localhost