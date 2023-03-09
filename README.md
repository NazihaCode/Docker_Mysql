
# Create a Dockerfile to run a mysql server, and create a container based on this image
In a ~/mysql/ directory, add Dockerfile and mybdd.sql.
"RUN DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server" allows the installation of the "mysql-server" package in foreground mode.
Create the docker image using the following command:
cd ~/mysql/
docker build -t mysqlserver .
Create the mysql container as follows:
docker run -d --rm --name mysql -p 3306:3306 mysqlserver
Check that the containers are running: docker ps
Use this command to enter the container: docker run -d --name mysql  -d -p 3306:3306 mysql-image  
Connect to the mysql database with the following command: mysql -uguest 
