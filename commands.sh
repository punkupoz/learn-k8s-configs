# Get ip of kube master
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kube-master

# kube
kubectl describe -n kube-system

kubectl get -n kube-system deployments

kubectl get -n kube-system pods

kubectl get -n kube-system pods

kubectl get -n kube-system svc

kubectl get -n kube-system ds

kubectl get -n kube-system configmaps

kubectl get -n kube-system ingress

kubectl get ingress

kubectl logs -n kube-system -f 

kubectl describe -n kube-system configmaps ingress-controller-leader-nginx
kubectl describe -n kube-system configmaps nginx-load-balancer-conf

kubectl patch svc my-nginx-nginx-ingress-controller -n kube-system -p '{"spec": {"type": "LoadBalancer", "externalIPs":["10.192.0.2"]}}'
kubectl patch svc -p '{"spec": {"type": "LoadBalancer", "externalIPs":["10.192.0.2"]}}'

kubectl config use-context minikube
kubectl config use-context dind

kubectl describe -n kube-system deployments my-nginx-nginx-ingress-controller

helm delete --purge my-nginx

helm install stable/nginx-ingress \
  --name=my-nginx \
  --set controller.hostNetwork='true' \
  --set controller.service.externalIPs[0]='10.192.0.2'



  --set defaultBackend.service.type='NodePort' \
  --set controller.nodeSelector."kubernetes\.io/hostname"="kube-node-2"
  --set controller.service.loadBalancerIP='10.192.0.2' \
  --namespace=kube-system \
  
  -f helm/nginx.yaml

  http://teriterimasumasu.kawaii

  http://teriterimasumasu.kawaii:30001