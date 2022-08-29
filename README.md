# Api Request automation with karate


## <u> Api Request_in: </u>

 It's an api to carry out tests, where it gives us a real response of the methods GET, POST, PUT and DELETE:

:pushpin: Get: "https://reqres.in/api/users/2", bring the information of a registered user.

:pushpin: Post: "https://reqres.in/api/users", it's used to create a new user and add it to the database.

:pushpin: Put: "https://reqres.in/api/users{id}", user update found in database.

:pushpin: Delete: "https://reqres.in/api/users/{id}", delete a user from the database.


### Table of Contents
1. [What I am going to do?](#general-info)
2. [Tools](#technologies)
3. [Execution](#execution)
4. [How to see reports?](#reports)


1. ### General Info

***

#### _In this repository we will be automated 4 endpoints:_
 <ul> 
<li>CreateUser
<li>LoginUsersuccessful
<li>LoginUserunsuccessful
<li>SingleUser 
</ul>

#### _In this work i used:_
* gherkin lenguage to make more understandable all scenarios
* Implement BDD (Behavior Driven Development)
* In compliance with the pattern SOLID

***

2. ### Tools 

* [Intellij IDEA](https://www.jetbrains.com/es-es/idea/)
* [Maven](https://mvnrepository.com/): Version 3.8.1
* [Postman](https://www.java.com/en/): Version 9.28.4

   #### Framework

* [Cucumber](https://cucumber.io/): Version 4.6.0
* [Junit5](https://junit.org/junit5/): Version 3.8.1
* [Karate]()

  #### Lenguague

* [Java](https://www.java.com/en/): Version 1.8_333

```bash
OS : Linux Ubuntu 22.04
```
***

3. ### Execution

En cumplimiento con los principios SOLID debemos realizar la ejecucucion segun la funcionalidad que querramos ver:

| Runner (Java Class) | Feature          |
|---------------------|------------------|
| Create              | createUser       |
| LoginSuccessful     | loginSuccessful  |
| LoginUnsuccessful   | loginUnsuccessful|
| SingleUser          | singleUser       |
| AllFeatureTest      | all Features     |

***

4. ### How to see reports?

Nos dirigimos a la carpeta Target y la desplegamos

Desplegamos la carpeta "Cucumber-html-reports"

Dar click derecho al archivo "overview-features.html", seleccionar "Open in", "Browser" y seleccionar el navegador.





