#Creating a base image
FROM mysql
# Environment Variable
#Setting root password as pucsd
ENV MYSQL_ROOT_PASSWORD pucsd
# creating database named as pucsdStudents
ENV MYSQL_DATABASE pucsdStudents
# Creating user named pucsd with  password as pucsd
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
# adding the schema.sql file to docker-entrypoint-initdb.d 
ADD ./schema.sql	/docker-entrypoint-initdb.d/
# Port to which the container must be connected
EXPOSE 3306
