#!/bin/bash


for i in 1 2 3 
do
podman volume create volumedb$i  
done

podman volume ls | grep volumedb
