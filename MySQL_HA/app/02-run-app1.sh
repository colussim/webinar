#!/bin/bash

podman run --name ecommerce --pod app --network mysqlsrv --ip 10.87.0.20 --secret MYSQL_ROOT_PASSWORD,type=env -e MYSQL_ROOT_USER=root -e MYSQL_HOST=mysql-router1 -e MYSQL_PORT=6446 -e MYSQL_DATABASE=mydb -e MYSQL_USER=app -e MYSQL_PASSWORD=Bench123 -d  mcolussi/ecommercep:1.0.1