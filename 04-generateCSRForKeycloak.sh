#!/bin/bash

###URL https://fedoramagazine.org/keycloak-on-fedora-workstation-with-podman/

openssl req \
    -new \
    -newkey rsa:2048 \
    -nodes \
    -keyout localhost.key \
    -sha256 \
    -out localhost.csr \
    -subj '/CN=My custom certificate/DC=localhost' \
    -addext 'subjectAltName=DNS:localhost' \
    -addext 'basicConstraints=critical,CA:FALSE' \
    -addext 'keyUsage=digitalSignature' \
    -addext 'extendedKeyUsage=serverAuth'
