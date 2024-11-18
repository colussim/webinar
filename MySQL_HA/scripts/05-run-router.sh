#!/bin/bash

# -e MYSQL_ROUTER_BOOTSTRAP_EXTRA_OPTIONS="--conf-use-socket --conf-use-gr-notification" \

podman run \
  --name mysql-router1 \
  --pod mysql-pod-router1  \
  --network mysqlsrv \
  --ip 10.87.0.2 \
  -e MYSQL_HOST=10.87.0.3 \
  -e MYSQL_PORT=3306 \
  -e MYSQL_USER=root \
  -e MYSQL_PASSWORD=Bench123 \
  -e MYSQL_INNODB_CLUSTER_MEMBERS=3 \
  -d container-registry.oracle.com/mysql/enterprise-router:9.0.1-aarch64

