# Rook Ceph

## Access toolbox
```
kubectl -n rook-ceph exec -it $(kubectl -n rook-ceph get pod -l "app=rook-ceph-tools" -o jsonpath='{.items[0].metadata.name}') bash
```

## Toolbox commands
```
ceph status
ceph osd status
ceph df
rados df
```
