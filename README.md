# Globant Challenge

The purpose of the projects is evaluate different tools of data engineer such as API, SQL, infrastructure and Cloud.

## Description

In the file Globant’s Data Engineering Coding Challenge.pdf you will found the instruction step by step for develop the challenge.

We have three files: departments, hired_employees and jobs. We have to create and API which has to be connected to a database, In this time we select MySQL database and insert the information in the new data base from the files. Also we have to create an end point that return the answer of two questions that has to be complete with SQL. To make scalable the project also we have to use tools to make the app to be in cloud services and create the infrastructure.

## Getting Started

### Tools

```
MySQL 8.0
Postman
Visual Studio Code
Python 3.12.3
Github
terraform
AWS services
```

### Installing

* to begin to execute the program we have to clone the repository

```
git clone https://github.com/cradaca39/globant_challenge.git
```

* We need to install the dependencies and libraries

```
pip install -r requirements.txt
```


### Executing program LOCAL 

* Open mysql and create a new connection define connection_name, username, password and localhost.

![Alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-6.png?raw=true)

* Example

```
connection_name: myconnection
username: root
password: password
localhost: 3306
```  


* When we have the correct test connection of the local instance. We open the edit of sql and create a database with name globant.

```
CREATE DATABASE globant
```
![alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-5.png?raw=true)

* When we have the database we have to create the tables to insert the information according to the structured of the data that we can found in the globant challenge pdf

```
CREATE TABLE globant.departments (
   `id` int DEFAULT NULL,
   `department` varchar(255) DEFAULT NULL
 );
 
 CREATE TABLE globant.employees (
   `id` int DEFAULT NULL,
   `full_name` varchar(255) DEFAULT NULL,
   `hired_date` date DEFAULT NULL,
   `id_deparment` int DEFAULT NULL,
   `id_job` int DEFAULT NULL
 );
 
 CREATE TABLE globant.jobs (
   `id` int DEFAULT NULL,
   `position` varchar(255) DEFAULT NULL
 ) 
 ```

 * When we have done our connection, the next step is write the credentials in database_connect.py

![Alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-7.png?raw=true)



* When we done to set the database with the tables the next steps we have to open visual studio code and in the installing step we clone the repository. Open the terminal in the location where you save the project and execute main file

```
python main.py
```
![alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image.png?raw=true)

* When we execute we will found a meessage from the flask with a route. That will be our route to work with the differents request

* When we have the connection we need to open postman and import the file globant.postman_collection.json. Note: (Is an example in json we need to have the file to upload)

![alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-1.png?raw=true)

* In this step we found POST and GET call to the local route that we execute in the past step. 

* In the POST we have to add the file that we want to insert the information. We can see the example in the picture.

```
upload_departments
upload_employees
upload_jobs
```

![alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-2.png?raw=true)

* If we want to get the answer of the two questions of the SQL that is method GET

```
employeed_by_departments
jobs_by_quarter
```

![alt text](https://github.com/cradaca39/globant_challenge/blob/main/images/image-3.png?raw=true)


### Executing program CLOUD services

* To begin the app first we can to star terraform infrastructure

```
./terraform init 
./terraform apply
```
![alt text](https://github.com/cradaca39/challenge-globant/blob/main/image_terraform1.PNG)

* Then we validate our instance in aws

make sure is running and get ip address to use in postman.

![alt text](https://github.com/cradaca39/challenge-globant/blob/main/image_aws_instance.PNG)


* Open postman and add the ip address with the port and the route of the request you want to do.

![alt text](https://github.com/cradaca39/challenge-globant/blob/main/image_postman_tables.PNG)

* If we are requesting to upload a file with the database, you can now see the information in mysql

![alt text](https://github.com/cradaca39/challenge-globant/blob/main/image_mysql_app.PNG)








## Authors

Contributors names and contact info

ex. Craig David Cartagena



## Acknowledgments

Inspiration, code snippets, etc.
* [connection_mysql](https://docs.sqlalchemy.org/en/20/core/engines.html)
* [Flask](https://flask.palletsprojects.com/en/3.0.x/blueprints/)
* [aws_terraform](https://www.youtube.com/watch?v=ODiSoZFxVRk)


