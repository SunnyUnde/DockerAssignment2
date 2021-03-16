# About Files:
### schema.sql:
This file contains schema of database and few insert queries for demo.

### dockerfile:
This file has instruction for creation of the image with follwing things:
1. Student Schema provided in schema.sql. 
2. Database named pucsdStudents. 
3. User named as 'pucsd' and password as 'pucsd'. 
4. Root password is set as 'pucsd'. 

# How to use?

### Build Image:
Note : If there is error of permission denied add sudo at start of instruction conatining docker as command in it or you can also become super user(This note is for LINUX user).

`docker build -t <container_name> path` 
1. `build` : this instruction is used to build the image according to the dockerfile
2. `-t <container_name>` : option to provide tagname according to the user's requirement.If using `-t` then provide image name whatever to your liking.
3. `path` : path of the directory where the dockerfile is present. If your working in the same directory.

### Run Image:
`docker run -d --name <image_name> -p 3306  <container_name>`
1. `run` : This command is use to run a instance of the conatiner.
2. `-d` : This option tells to run the image in detach mode. 
3. `--name <image_name>` : This option is used to provide name to the image according to user's requirement provide the name in place of `<image_name>`. If not provided then docker creates a random name.
4. `-p 3306` : This tells that the host machine will connect to the conatiner through 3306 port. 
5. `<container_name>` : The container name which you have given in the above command.

## Use interactive bash
`docker exec -it <image_name> /bin/bash`
1. `exec` :This command is used to execute the running container.
2. `-it`  : This tells docker that we want to run in interactive mode.
3. `<image_name>`: The image_name which you have provdided in earlier command.
4. `/bin/bash`: This tells docker that you will be executing with help of bash.

### Enter Mysql prompt:
`mysql -upucsd -ppucsd`
1. `mysql` : to enter mysql shell
2. `-upucsd` : we want to enter mysql using user as pucsd.
3. `-ppucsd` : the password for the user 'pucsd' is 'pucsd'.

### Use Database pucsdStudents:
`use pucsdStudents`: This tells that we want to use datbase pucsdStudents.

### To see the content of the table 'StudentData':
`select * from studentData;` : Inorder to view all the table. 
