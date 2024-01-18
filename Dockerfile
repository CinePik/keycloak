FROM quay.io/keycloak/keycloak:23.0.1

EXPOSE 8080

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

CMD [ "/opt/keycloak/bin/kc.sh", "start"]