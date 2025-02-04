#!/bin/bash

# Run the following commands to create the Certificate Authority (CA) keys: 
openssl genrsa 2048 > ca-key.pem
openssl req -new -x509 -nodes -days 3650 -key ca-key.pem > ca-cert.pem

# Run the following commands to create the server SSL key and certificate: 
openssl req -newkey rsa:2048 -days 3650 -nodes -keyout server-key.pem > server-req.pem
openssl x509 -req -in server-req.pem -days 3650 -CA ca-cert.pem -CAkey ca-key.pem -set_serial 01 > server-cert.pem
openssl rsa -in server-key.pem -out server-key.pem

# Run the following commands to create the client SSL key and certificate: 
openssl req -newkey rsa:2048 -days 3650 -nodes -keyout client-key.pem > client-req.pem
openssl x509 -req -in client-req.pem -days 3650 -CA ca-cert.pem -CAkey ca-key.pem -set_serial 01 > client-cert.pem
openssl rsa -in client-key.pem -out client-key.pem
