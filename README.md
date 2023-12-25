# keycloak

Keycloak microservice for identity and access management.

## Setup

### Copy Keycloak seed to k8s config map

```bash
kubectl create configmap cinepik-realm --from-file=cinepik-realm.json=data/cinepik-realm.json
```
