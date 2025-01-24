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
 );
 