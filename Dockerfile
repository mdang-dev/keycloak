FROM quay.io/keycloak/keycloak:26.3.2

ENV KC_BOOTSTRAP_ADMIN_USERNAME=admin
ENV KC_BOOTSTRAP_ADMIN_PASSWORD=admin1234
ENV KC_FEATURES=token-exchange,admin-fine-grained-authz

EXPOSE 9191

# Start Keycloak in dev mode
CMD ["start-dev", "--http-port=9191"]
