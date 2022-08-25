Feature: service client POST
  As Qa automation
  I want to login
  To make diferent things in the page

  Background: consume service
    * url url

  Scenario Outline: check the service with validate email and password using method POST

    * def responsesPost = read('classpath:karate/request/loginSuccessful/responseLoginSuccessful.json')

    Given path "login"
    And request
    """
    {
    "email": <email>,
    "password": <password>
     }
    """
    When method POST
    Then status 200
    And match response == responsesPost

    Examples:
    |email                    |password  |
    |eve.holt@reqres.in       |"hola"    |
    |george.bluth@reqres.in   |123456    |
    |janet.weaver@reqres.in   |"#$%&"    |
    |emma.wong@reqres.in      |"-1"      |
    |charles.morris@reqres.in |"matias96"|
    |tracey.ramos@reqres.in   |"@matias_"|

  Scenario Outline: check the service with invalidate email without password using method POST

    * def responsesPost = read('classpath:karate/request/response_post_unsuccessful.json')

    Given path "login"
    And request
    """
    {
    "email": <email>
     }
    """
    When method POST
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