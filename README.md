# practice-ground
practice-ground
--------------------------
**VERY IMPORTANT** (Install requirements in the server)

**Ubuntu EC2**
├── Jenkins
├── Docker
├── kubectl
└── Minikube

------------------

# install Helm on ubuntu
**_recommended for up to date install_**

[![Helm](https://helm.sh)](https://helm.sh/docs/intro/install/)

optional
```
sudo apt-get install curl gpg apt-transport-https --yes
```
```
curl -fsSL https://packages.buildkite.com/helm-linux/helm-debian/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
```
```
echo "deb [signed-by=/usr/share/keyrings/helm.gpg] https://packages.buildkite.com/helm-linux/helm-debian/any/ any main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
```
sudo apt-get update
```
sudo apt-get install helm
```
helm repo update
```
helm version
```
# prometheus

1. Create a Prometheus namespace.

``` 
kubectl create namespace prometheus
```

2. Add the prometheus-community chart repository.
```
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
```
3. Deploy Prometheus.
```
helm upgrade -i prometheus prometheus-community/prometheus \
    --namespace prometheus \
    --set alertmanager.persistence.storageClass="gp2" \
    --set server.persistentVolume.storageClass="gp2"
```
4. Verify that all of the Pods in the prometheus namespace are in the READY state
```
kubectl get pods -n prometheus
```
5. Use kubectl to port forward the Prometheus console to your local machine.
```
kubectl --namespace=prometheus port-forward deploy/prometheus-server 9090
```

