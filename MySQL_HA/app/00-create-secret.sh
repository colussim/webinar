#!/bin/bash

PASSWD="XXXX"
echo $PASSWD | podman secret create MYSQL_ROOT_PASSWORD -
