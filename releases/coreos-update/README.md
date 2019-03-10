# Apply resources

kubectl apply -f ./releases/coreos-update/namespace.yml
kubectl apply -f ./releases/coreos-update/cluster-role.yml
kubectl apply -f ./releases/coreos-update/cluster-role-binding.yml
kubectl apply -f ./releases/coreos-update/update-operator.yml
kubectl apply -f ./releases/coreos-update/update-agent.yml

kubectl apply -f ./releases/coreos-update/rook/rbac.yaml
kubectl apply -f ./releases/coreos-update/rook/ceph-after-reboot-script.yaml
kubectl apply -f ./releases/coreos-update/rook/ceph-before-reboot-script.yaml
kubectl apply -f ./releases/coreos-update/rook/before-reboot-daemonset.yaml
kubectl apply -f ./releases/coreos-update/rook/after-reboot-daemonset.yaml