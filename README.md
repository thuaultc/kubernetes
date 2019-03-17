# :rocket: Kubernetes

This repository contains manifests for the deployment of several services on my
dedicated Kubernetes cluster.

## Install core components

```
./ailm install nginx-ingress
./ailm install cert-manager
./ailm install rook-ceph
./ailm install coreos-update
./ailm install docker-registry
./ailm install gitlab-runner
```

## Authors

* **Clément Thuault** - [thuaultc](https://github.com/thuaultc)
