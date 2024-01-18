FROM quay.io/keycloak/keycloak:23.0.1

EXPOSE 8080

CMD [ "/opt/keycloak/bin/kc.sh", "start"]