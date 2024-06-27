#!/bin/bash

###URL https://fedoramagazine.org/keycloak-on-fedora-workstation-with-podman/

openssl x509 \
    -req \
    -days 365 \
    -in localhost.csr \
    -CA my-custom-ca.crt \
    -CAkey my-custom-ca.key \
    -out localhost.crt \
    -set_serial 01 \
    -sha256 \
    -copy_extensions copy
