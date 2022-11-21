
Program starts with main.go in which starting of  api server and endpoints declaration is done. 
generateTransId() function is used as middleware fuction to generate unique id of each api call

Basic Flow is as below 
  

<img width="967" alt="image" src="https://user-images.githubusercontent.com/42058130/203101273-687de2ab-5c4d-4356-88c1-a69e77e0cca2.png">

Note* :- As input timestamp is not ordered , we cann't utilise prioprity queue , sliding windows type algorithms to get stats on O(1). 


models package --> use to define request and response structure 

helper package --> helper function to validate input json etc.

auth package --> additional feature , if we want to secure our api with userid/password

logs package --> create a .log file to store all logs. here we can use 5 mode , fatal, info , warn , debug, error

map package --> store the global map in which  i maintain the transaction record

env package --> set the environment variable 

Dockerfile --> to deploy the api on docker 




