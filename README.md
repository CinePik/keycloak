# keycloak

Keycloak microservice for identity and access management.

## Important URLs

- [User login](http://localhost:8080/admin/cinepik/console/)
- [Admin console](http://localhost:8080/admin/master/console/#/cinepik)
- [Account management](http://localhost:8080/realms/cinepik/account/#/)

## Setup

### Load Keycloak seed file

Copy `cinepik-realm.json`  to the `data` directory for local deployment or copy it to the k8s config map for cloud deployment.

```bash
kubectl create configmap cinepik-realm --from-file=cinepik-realm.json=data/cinepik-realm.json
```

## Kubernetes Deployment

### Setup configs

Create config map from `cinepik-realm`

```bash
kubectl create configmap cinepik-realm --from-file=cinepik-realm.json=data/cinepik-realm.json
```

Create config map for keycloak

```bash
kubectl create configmap keycloak-config --from-literal=KEYCLOAK_BASE_URL="http://cinepik-keycloak" --from-literal=KEYCLOAK_CLIENT_ID="nest-auth" --from-literal=KEYCLOAK_PORT=8080 --from-literal=KEYCLOAK_REALM="cinepik"
```

Create secret for keycloak

```bash
kubectl create secret generic keycloak-config --from-literal=KEYCLOAK_ADMIN="admin" --from-literal=KEYCLOAK_ADMIN_PASSWORD="<REPLACE_ME>" --from-literal=KEYCLOAK_CLIENT_SECRET="<REPLACE_ME>" --from-literal=KEYCLOAK_REALM_RSA_PUBLIC_KEY="<REPLACE_ME>"
```

### Apply changes

Apply deployment

```bash
kubectl apply -f k8s/cinepik-keycloak.yml
```

Apply service

```bash
kubectl apply -f k8s/cinepik-keycloak-svc.yml
```

### Other useful commands

```bash
kubectl get pods
kubectl delete deployment cinepik-keycloak-deployment
kubectl delete configmap <configmap name>
kubectl rollout restart deployment/cinepik-keycloak-deployment
kubectl logs <pod-id>
kubectl describe secret <secret-name>
kubectl get secret <secret-name>
kubectl get service
kubectl describe pods
```
