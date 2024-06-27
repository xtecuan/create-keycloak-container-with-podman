#!/bin/bash

###URL https://fedoramagazine.org/keycloak-on-fedora-workstation-with-podman/

export KEYCLOAK_ADMIN="admin" # replace me!
export KEYCLOAK_ADMIN_PASSWORD="BP2024jrpblitzthinkx1g11" # replace me!
export GENERATED_CERTS_DIR="$HOME/Promerica/Projects3/KeycloakXtesoft/ssl/"

podman run \
    --rm \
    -d \
    -p 8443:8443 \
    -e KEYCLOAK_ADMIN="${KEYCLOAK_ADMIN}" \
    -e KEYCLOAK_ADMIN_PASSWORD="${KEYCLOAK_ADMIN_PASSWORD}" \
    -v "$GENERATED_CERTS_DIR:/ssl/:U,Z,ro" \
    --name keycloak \
    quay.io/keycloak/keycloak:latest \
    start \
    --hostname=localhost \
    --https-certificate-file=/ssl/localhost.crt \
    --https-certificate-key-file=/ssl/localhost.key
