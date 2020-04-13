## DATABASE COURSEWORK SPEC 📄

###### Implement and document the development of a database solution for a shopping centre application. A database is required to store shopping centre details including shops, categories and ratings. Each of the 6 shopping centres have a unique code, a name, a location and a set of shops. A shop is identified by a number and has a name (10 shops are required). 


#### INSTRUCTIONS FOR PHPMYADMIN (MAC)💻

###### 1. Download XAMPP (https://www.apachefriends.org/download.html) 
###### 2. Check manager-osx to ensure apache is running - if not this is to do with the port provided. Try updating to something different from what is already in use. If that doesn't work, go to your terminal and type in the command `sudo apachectl stop`. 
###### 3. Once XAMPP is running it will open up in a browser, in the top right corner click on phpMyadmin.
###### 4. Go to http://localhost:9000/phpmyadmin (or whatever port you have specified) to create your database. 

#### INSTRUCTIONS FOR WEB INTERFACE 🖥

###### 1. Export your sql files to your local machine and make sure you have carefully placed them in the filepath XAMPP/htdocs so that when you make a connection it will be able to find it. 
###### 2. Create the connection - for example: 
`$dsn = "localhost";
  $username = "root";
  $password = "";
  $dbname = "name_of_your_database_goes_here";`
###### 3. Add this to your html/js file for example: 
`<?php include 'getCentres.php';?>`

___________________


####  🔩PENDING ...

###### - UI not adding shops / centres 
###### - UI css updates
