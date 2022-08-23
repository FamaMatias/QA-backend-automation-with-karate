Feature: service client POST
  As Qa automation
  I want to login
  To make diferent things in the page

  Background: consume service
    * url url

  Scenario: check the service POST Method

    * def responsesPost = read('classpath:karate/request_in/response_post_successful.json')

    Given path "login"
    And request
    """
    {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
     }
    """
    When method post
    Then status 200
    And match response == responsesPost