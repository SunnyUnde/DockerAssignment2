#Creating a base image
FROM mysql
ENV MYSQL_ROOT_PASSWORD pucsd
ENV MYSQL_DATABASE pucsdStudents
ENV MYSQL_USER pucsd
ENV MYSQL_PASSWORD pucsd
ADD ./schema.sql	/docker-entrypoint-initdb.d/
EXPOSE 3306
