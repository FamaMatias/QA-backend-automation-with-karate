Feature: service client POST
  As Qa automation
  I want to login
  To make diferent things in the page

  Background: consume service
    * url url

  Scenario Outline: check the service with invalidate email without password using method POST

  * def responsesPost = read('classpath:karate/request/loginUnsuccessful/responseLoginUnsuccessful.json')
  * def requestBody = read('classpath:karate/request/loginUnsuccessful/requestLoginUnsuccessful.json')

  Given path "login"
  And request requestBody
  And params { "email": <email> }
  When method POSTq
  Then status 400
  And match response == responsesPost

  Examples:
  |email                    |
  |matiasfama92@gmail.com   |
  |eve.holt@reqres.in       |
  |george.bluth@reqres.in   |
  |janet.weaver@reqres.in   |
  |emma.wong@reqres.in      |
  |charles.morris@reqres.in |
  |tracey.ramos@reqres.in   |