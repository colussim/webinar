#!/bin/bash

PASSWD="XXXXXX"
echo $PASSWD | podman secret create MYSQL_ROOT_PASSWORD -
