#!/bin/bash

export INITSQL=$HOME/initdb/init.sql
export CONFIG=$HOME/config
export CERT=$HOME/ssl
export IMAGE="9.4.0-aarch64"

podman run --name mysql-instance-1 --pod mysql-pod1 --network mysqlsrv --ip 10.87.0.3 --secret MYSQL_ROOT_PASSWORD,type=env -v $CONFIG/1/my.cnf:/etc/my.cnf -v $CERT:/etc/my.cnf.d/certs/:ro -v volumedb1:/var/lib/mysql -v $INITSQL:/docker-entrypoint-initdb.d/init.sql -d container-registry.oracle.com/mysql/enterprise-server:$IMAGE --bind-address=10.87.0.3

podman run --name mysql-instance-2 --pod mysql-pod2 --network mysqlsrv --ip 10.87.0.4 --secret MYSQL_ROOT_PASSWORD,type=env -v $CONFIG/2/my.cnf:/etc/my.cnf -v $CERT:/etc/my.cnf.d/certs/:ro -v volumedb2:/var/lib/mysql -v $INITSQL:/docker-entrypoint-initdb.d/init.sql -d container-registry.oracle.com/mysql/enterprise-server:$IMAGE --bind-address=10.87.0.4
podman run --name mysql-instance-3 --pod mysql-pod3 --network mysqlsrv --ip 10.87.0.5 --secret MYSQL_ROOT_PASSWORD,type=env -v $CONFIG/3/my.cnf:/etc/my.cnf -v $CERT:/etc/my.cnf.d/certs/:ro -v volumedb3:/var/lib/mysql -v $INITSQL:/docker-entrypoint-initdb.d/init.sql -d container-registry.oracle.com/mysql/enterprise-server:$IMAGE --bind-address=10.87.0.5
