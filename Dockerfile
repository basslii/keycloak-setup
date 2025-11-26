FROM quay.io/keycloak/keycloak:26.0.6

# Optional: copy your custom providers or themes
# COPY ./providers /opt/keycloak/providers
COPY ./themes ~/opt/keycloak/themes

ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

RUN /opt/keycloak/bin/kc.sh build
