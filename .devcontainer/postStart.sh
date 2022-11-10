minikube start
minikube addons enable ingress
# This exposes the minikube ingress controller on port 8022 on our local machine. 
nohup kubectl port-forward --pod-running-timeout=24h -n ingress-nginx service/ingress-nginx-controller 8022:80 &
npm run basic-helm-install
npm run advanced-helm-install
npm start