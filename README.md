# [Taxi Service](https://dibrov-taxi-app.herokuapp.com/login)

This is web application with backend and frontend parts that presents 
the work of a taxi service. 
The following functionality is implemented in it:
- Add car, driver or manufacturer
- Display car, driver or manufacturer
- Delete car, driver or manufacturer
- Add driver to car
- Display all drivers for current car

You can test these features as soon as you create "driver's" account (Click "Sign Up" button)

## Implementation details and technologies
Project based on 3-layer architecture:
- Presentation layer (controllers)
- Application layer (services)
- Data access layer (DAO)

### Technologies
* Apache Tomcat - version 9.0.46
* MySQL - version 8.0.22
* JDBC
* Servlet
* JSTL
* JSP
* HTML, CSS

# Setup

- fork this project
- Create the required tables for your database using file resources/init_db.sql
- Add your db configurations in util/ConnectionUtil
- Run project using TomCat 9.0.5

# Heroku

This project is also deployed to Heroku. You can click it via this link:
[Heroku Link](https://dibrov-taxi-app.herokuapp.com/login)
