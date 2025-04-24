Project: Automated Deployment of a Scalable Web Application Using Ansible, Docker, Linux, and AWS

We have created 3 aws instances one for database-db-server.json, application-app_server.json, and an ansible master node- master.
json. 

Also have one ansible inventory file which has the details of the servers. 

Created One rds instance which contains my sql database IAC json file which will be contected to the db_server.json.

Created an ansible playbook for the masternode to install docker and docker-compose on the app instances.

Created a Dockerfile which uses the image of nodejs appliction that will be install on app_server.json.



Will define 3 security groups, app-server to public -http(80), https(443)
Master ssh from app server and db server for connection purposes
mysql from app server and master node
In the Security group json file we have created we after we upload the code in aws, we will get the output, in that output we will get the id's fro the same, we will use those security group ids and put those in the respecrtice codes.
 