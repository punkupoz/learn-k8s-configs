# Get ip of kube master
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' kube-master