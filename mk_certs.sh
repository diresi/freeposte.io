#!/bin/bash

source .env
CERTS=${ROOT}/certs
mkdir -p ${CERTS}
openssl req -x509 -nodes -newkey rsa:4096 \
    -subj "/C=/ST=/L=/O=/CN=${DOMAIN}" \
    -keyout ${CERTS}/key.pem \
    -out ${CERTS}/cert.pem

