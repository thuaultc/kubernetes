# README Helm

## Fetch charts

```bash
$ helm fetch <chart> --untar --untardir charts
```

## Install or upgrade release

```bash
$ helm upgrade --install <release> --namespace <namespace> --values ./releases/<chart>/values.yml ./charts/<chart>
```

## Delete release

```bash
$ helm delete <release> --purge
```
