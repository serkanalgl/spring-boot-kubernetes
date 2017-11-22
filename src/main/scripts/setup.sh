kubectl create -f deployment-todo.yml
kubectl create -f deployment-user.yml

kubectl create -f service-todo.yml
kubectl create -f service-user.yml

kubectl create -f ingress.yml