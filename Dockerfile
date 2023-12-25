FROM quay.io/keycloak/keycloak:23.0.1

COPY ./data/ /opt/keycloak/data/import

ENV KEYCLOAK_PORT=8080

# TODO: copy realm to github actions
ENTRYPOINT [ "/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm" ]