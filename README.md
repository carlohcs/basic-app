# Basic App

A simple basic app where we can run without too much issues.
It contains Docker, Kubernetes and AWS ECS examples to run.

## Docker

Build the image:

```bash
docker build . -t carlohcs/basic-app:latest
```

Run the image:

```bash
docker run -p 3000:3000 carlohcs/basic-app:latest
```

Access in the browser at `http://localhost:3000`.

## Kubernetes

To run the Kubernetes application:

For dev:

```bash
kubectl apply -f k8s/dev
```

For prod:

```bash
kubectl apply -f k8s/prod
```

Access in the browser at `http://localhost:30001`.
