FROM quay.io/keycloak/keycloak:23.0.1

EXPOSE 8080

ENTRYPOINT [ "/opt/keycloak/bin/kc.sh", "start-dev", "--import-realm" ]