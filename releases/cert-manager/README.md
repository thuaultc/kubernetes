# Install the CustomResourceDefinition resources separately
kubectl apply -f https://raw.githubusercontent.com/jetstack/cert-manager/release-0.6/deploy/manifests/00-crds.yaml

# Install the chart
helm upgrade --install cert-manager --namespace cert-manager --values ./releases/cert-manager/values.yml ./charts/cert-manager

# Install clusterissuer letsencrypt-prod
kubectl apply -f cluster-issuer.yml
