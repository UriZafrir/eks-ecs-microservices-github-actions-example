
## Devops Example Project
repo containes:
- Two dockerfiles showcasing two ways of implementing an nginx container talking to an RDS databas. one with two containers and one with nginx with lua (tech called openresty)
- Three Github actions workflows, to push to aws elastic container registry, and to update EKS cluster.
- Aws code pipelines to push containers to fargate elastic container service
- Terraform code for deploying an elastic kubernetes cluster on aws and deploy the app. EKS uses a seperate subnet with vpc peering and dns resolution.


### dev environment :
docker rm -f $(docker ps -aq); docker rmi -f $(docker images -aq)
docker-build-and-push-to-docker-hub.sh && kubectl apply -f kubernetes-dev.yaml && kubectl get svc commit-service
then go to the port mapped to 443 - https://localhost:port
afterwards
kubectl delete -f kubernetes-dev.yaml && docker rmi -f $(docker images -aq)


### prod environment:
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


###to wrap up
kubectl delete -f ../kubernetes-openresty.yaml
k get svc (and follow the link)

aws ecs update-service --cluster ecs-cluster-commit --service commit-openressty --desired-count 0 
aws ecs update-service --cluster ecs-cluster-commit --service commit-flask-nginx-gunicorn-v2 --desired-count 0 
aws rds stop-db-instance --db-instance-identifier database-1 
tf destroy

