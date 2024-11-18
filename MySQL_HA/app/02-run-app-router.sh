#!/bin/bash

podman run --name ecommerce --pod app --network mysqlsrv --ip 10.87.0.20 --secret MYSQL_PASSWORD,type=env -e MYSQL_HOST=10.87.0.3 -e MYSQL_PORT=6446 -e MYSQL_DATABASE=mydb -e MYSQL_USER=app -d  mcolussi/ecommercep:1.0.1
