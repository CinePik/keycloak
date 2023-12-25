FROM quay.io/keycloak/keycloak:23.0.1

ENV KEYCLOAK_PORT=8080

CMD [ "/opt/keycloak/bin/kc.sh", "start"]