# keycloak

Keycloak microservice for identity and access management.

## Setup

### Copy Keycloak seed file to the k8s config map

```bash
kubectl create configmap cinepik-realm --from-file=cinepik-realm.json=data/cinepik-realm.json
```

### Deploy

```bash
kubectl apply -f k8s\cinepik-keycloak.yml
```
