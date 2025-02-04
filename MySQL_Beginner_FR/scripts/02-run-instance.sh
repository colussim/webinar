#!/bin/bash

export INITSQL=$HOME/Documents/App/mysql-demo-begin/initdb/init.sql
export CONFIG=$HOME/Documents/App/mysql-demo-begin/config
export CERT=$HOME/Documents/App/mysql-demo-begin/ssl

podman run --name mysql9-instance-1 --pod mysql9-pod1 --network mysqlsrv --ip 10.87.0.30 --secret MYSQL_ROOT_PASSWORD,type=env -v $CONFIG/1/my.cnf:/etc/my.cnf -v $CERT:/etc/my.cnf.d/certs/:ro -v vdemodb01:/var/lib/mysql -v $INITSQL:/docker-entrypoint-initdb.d/init.sql -d container-registry.oracle.com/mysql/enterprise-server:9.0.1-aarch64 --bind-address=10.87.0.30
