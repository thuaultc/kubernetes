# :rocket: Kubernetes

This repository contains manifests for the deployment of several services on my
dedicated Kubernetes cluster.

## Helm repositories

```
$ helm repo add stable https://kubernetes-charts.storage.googleapis.com
$ helm repo add jetstack https://charts.jetstack.io
```

## Install core components

```
$ ./setup namespaces
$ ./setup cluster
```

## Install specific app

Fetch or create a chart in the charts/ directory.
```
$ helm pull stable/docker-registry --untar --untardir charts
```

Add values and raw resources (if any) in the corresponding releases/ directory.
```
$ mkdir releases/docker-registry
```

Then:
```
$ ./ailm install <chart-name>
```

## Secrets

Secrets aren't commited (secrets.yml files are in .gitignore).

## Local storage

Don't forget to chown (either on the host or via initContainer) the volume
(default permissions are root 755).

## Authors

* **Clément Thuault** - [thuaultc](https://github.com/thuaultc)
