FROM quay.io/keycloak/keycloak:26.3.2

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin1234
ENV KC_FEATURES=token-exchange,admin-fine-grained-authz

CMD ["/bin/sh", "-c", "/opt/keycloak/bin/kc.sh start-dev --http-host=0.0.0.0 --http-port=${PORT}"]
