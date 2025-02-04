#!/bin/bash

PASSWD="Bench123"
echo $PASSWD | podman secret create MYSQL_ROOT_PASSWORD -
