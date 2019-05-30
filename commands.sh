# Get ip of kube master
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kube-master

# kube
kubectl describe -n kube-system

kubectl get -n kube-system deployments

kubectl get -n kube-system pods

kubectl get -n kube-system svc

kubectl get -n kube-system configmaps

kubectl get -n kube-system ingress

kubectl get ingress

kubectl logs -n kube-system -f 

kubectl describe -n kube-system configmaps ingress-controller-leader-nginx
kubectl describe -n kube-system configmaps nginx-load-balancer-conf

kubectl config use-context minikube
kubectl config use-context dind


helm install stable/nginx-ingress \
  --namespace=kube-system \
  --name=my-nginx \
  --set controller.service.nodePorts.http='30001' \
  --set controller.service.nodePorts.https='30002' \
  --set defaultBackend.service.type='NodePort'

  http://teriterimasumasu.kawaii