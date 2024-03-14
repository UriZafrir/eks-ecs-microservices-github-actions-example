for dev environment, use :
docker rm -f $(docker ps -aq); docker rmi -f $(docker images -aq)
docker-build-and-push-to-docker-hub.sh && kubectl apply -f kubernetes-dev.yaml && kubectl get svc commit-service
then go to the port mapped to 443 - https://localhost:port
afterwards
kubectl delete -f kubernetes-dev.yaml && docker rmi -f $(docker images -aq)


prod environment:
fargate ecs:
aws rds start-db-instance --db-instance-identifier database-1
aws ecs update-service --cluster ecs-cluster-commit --service commit-openressty --desired-count 1
aws ecs update-service --cluster ecs-cluster-commit --service commit-flask-nginx-gunicorn-v2 --desired-count 1


https://<ip>/
https://<ip>/query

kubernetes cluster:
tf init && tf plan
tf apply
aws rds start-db-instance --db-instance-identifier database-1


to wrap up
kubectl delete -f ../kubernetes-openresty.yaml
k get svc (and follow the link)

aws ecs update-service --cluster ecs-cluster-commit --service commit-openressty --desired-count 0 
aws ecs update-service --cluster ecs-cluster-commit --service commit-flask-nginx-gunicorn-v2 --desired-count 0 
aws rds stop-db-instance --db-instance-identifier database-1 
tf destroy
