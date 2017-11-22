# spring-boot-kubernetes
Spring Boot Microservices with kubernetes


1-) add a new server configuration to maven setting.xml ( it's required because of publish docker images )

example: 

```
<server>
	<id>docker-hub</id>
	<username>YOUR DOCKER HUB USERNAME</username>
	<password>YOUR DOCKER HUB PASSWORD</password>
	<configuration>
		<email>sample@sample.com</email>
	</configuration>
</server>
```



2-) I used kubernetes ingress for single enpoint (gateway). Please add host "kube.all" to your /etc/hosts file with your Minikube ip (probably 192.168.99.100).

3-) execute ```/src/main/scripts/build.sh``` or execute ```mvn clean install docker:build -DpushImage``` for each maven sub-modules (todo and user) 

4-)  execute ```/src/main/scripts/setup.sh``` or execute the following commands respectively

     in src/main/scripts

     * kubectl create -f deployment-todo.yml
     * kubectl create -f deployment-user.yml
     
     * kubectl create -f service-todo.yml
     * kubectl create -f service-user.yml
     
     * kubectl create -f ingress.yml
     
     
 5-) open your browser and go to do sky! => http://kube.all/todo  http://kube.all/user ( for initial deployment, you have to wait a bit for stand up ingress )
 
 
 Cheers,
 Serkan Alguel
