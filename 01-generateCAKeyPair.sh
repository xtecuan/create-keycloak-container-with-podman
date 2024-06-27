#!/bin/bash

###URL https://fedoramagazine.org/keycloak-on-fedora-workstation-with-podman/
openssl req \
    -x509 \
    -new \
    -nodes \
    -keyout my-custom-ca.key \
    -sha256 \
    -days 3650 \
    -out my-custom-ca.crt \
    -subj '/CN=My custom CA/DC=localhost'
