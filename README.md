# keycloak

Keycloak microservice for identity and access management.

## Setup

### Load Keycloak seed file

Copy `cinepik-realm.json`  to the `data` directory for local deployment or copy it to the k8s config map for cloud deployment.

```bash
kubectl create configmap cinepik-realm --from-file=cinepik-realm.json=data/cinepik-realm.json
```

### Deploy

```bash
kubectl apply -f k8s\cinepik-keycloak.yml
```
