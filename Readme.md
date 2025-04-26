Project: Automated Deployment of a Scalable Web Application Using Ansible, Docker, Linux, and AWS
We have created 3 aws instances one for database-db-server.json, application-app_server.json, and an ansible master node- master.
json. 
Also have one ansible inventory file which has the details of the servers which will be saved on master ec2.
Created One rds instance which contains my sql database IAC json file which will be contected to the app_server.json.
Created an ansible playbook for the masternode to install docker and docker-compose on the app instances.


Will define 3 security groups, app-server to public -http(80), https(443)
Master ssh from app server and db server for connection purposes
mysql from app server and master node
In the Security group json file we have created we after we upload the code in aws, we will get the output, in that output we will get the id's fro the same, we will use those security group ids and put those in the respecrtice codes.




Created a docker file(image) that has all the dependencies, that will copy the code from local system to docker container. set a working directory, also when the container is start, it wil run the program. Also in docker compose file 2 containers are launched with of node and mysql with respective volume mounts, its environment variables. network connectvity etc.\





Created a AWS ECR ecr_repository.json file which has all the details to create an AWS ECR, here we will push our dockerfile into it.
docker build -t myapp . (create an image)
docker push app.dkr.ecr.ap-south-1.amazonaws.com/my-ecr-repo:v1   (push image into aws ecr)



Created a auto scaling group for sclaing the app_server in case it fails.







 