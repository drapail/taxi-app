# [Taxi Service] (https://desolate-fortress-31778.herokuapp.com/login)

This is a simple project made to show my skills in Java, JDBC, WEB, OOP. You can use basic CRUD operations.
After crete account you have next features:
- Add car, driver or manufacturer
- Display car, driver or manufacturer
- Delete car, driver or manufacturer
- Add driver to car
- Display all drivers for current car

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
