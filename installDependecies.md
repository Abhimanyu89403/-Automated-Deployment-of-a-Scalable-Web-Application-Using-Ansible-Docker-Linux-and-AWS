Now that ec2 instances of ansible master, db server, appserver and rds instances are created, we have to install the dependencies on those ec2-instances.

We do the ssh connections for the same now in our terminal
"ssh -i key.pem ec2-user@master-public-ip-address
We did the ssh connection to our master ip address because we will use this node as an ansible master node and with help of this install related dependencies on the other servers.

Dependecies that are to be installed.
yum install ansible -y on master server


yum install mysql -y on the db_server
mysql -h rds_endpoint.rds.amzonaws.com -u Abhi89403 -p
rds endpoint will be displayed on the aws console, copy from there enter the password, now the connection will be established from db_server to the rds-instance.

