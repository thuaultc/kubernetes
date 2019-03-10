# Create operator first
helm upgrade --install rook-ceph --namespace rook-ceph-system --values ./releases/rook-ceph/values.yml ./charts/rook-ceph/

# Configure basics for cluster
kubectl apply -f ./releases/rook-ceph/cluster/namespace.yml
kubectl apply -f ./releases/rook-ceph/cluster/rbac.yml

# Create cluster
kubectl apply -f ./releases/rook-ceph/cluster/ceph-cluster.yml

# Create toolbox
kubectl apply -f ./releases/rook-ceph/cluster/tools.yml

# Access toolbox
kubectl -n rook-ceph exec -it $(kubectl -n rook-ceph get pod -l "app=rook-ceph-tools" -o jsonpath='{.items[0].metadata.name}') bash

# Toolbox commands
ceph status
ceph osd status
ceph df
rados df
