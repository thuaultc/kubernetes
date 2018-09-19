# :rocket: Kubernetes manifests

This repository contains manifests for the deployment of several services on my
dedicated cluster.

## What's in there ?

All manifests not associated with a specific GitHub repository can be retrieved here, split in their corresponding namespace :

* **kube-system:** Basic kubernetes services
* **kube-lego:** Let's encrypt automatic renewal
* **ingress-nginx:** NGINX Ingress engine with HTTPS handling (using kube-lego)
* **registry:** Docker registry, [available here](https://registry.thuault.com)
* **logging:** EFK stack for automatic logging of every Kubernetes pod
* **monitoring:** Prometheus/Grafana stack for metrics monitoring
* **rook-system/rook:** [Rook.io](https://rook.io) 3-node cluster deployment manifests
* **media:** Radarr/Sonarr/Transmission/Plex media stack based upon Rook shared storage
* **minecraft:** Simple minecraft server deployment

## Usage

With a working Kubernetes cluster, run:


```
kubectl apply -f <manifest-you-want-to-apply>
```

## Environment

This was tested and deployed on the following environment:

* Nodes: 1 master - 2 slaves
* OS: CoreOS - Alpha (Online.net)
* Version: Kubernetes v1.9.0

## Authors

* **Clément Thuault** - [thuaultc](https://github.com/thuaultc)
