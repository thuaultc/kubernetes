# README Helm

## Fetch charts

```bash
$ helm fetch <chart> --untar --untardir charts
```

## Install release

```bash
$ helm install --namespace <namespace> --name <release> -f ./releases/<chart>/values.yml ./charts/<chart>
```

## Upgrade release

```bash
$ helm upgrade --namespace <namespace> -f ./releases/<chart>/values.yml <release> ./charts/<chart>
```

## Delete release

```bash
$ helm delete <release> --purge
```
