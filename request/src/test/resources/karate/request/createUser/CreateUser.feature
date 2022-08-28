Feature: service client POST
  As Qa automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: check the service POST Method

      * def requestCreate = read('classpath:karate/request/createUser/requestCreateUser.json')
      * def responsesPost = read('classpath:karate/request/createUser/responseCreateUser.json')

      Given path "users"
      And request requestCreate
      When method post
      Then status 201
      And match response == responsesPost
      And assert response.name == requestCreate.name
      And assert response.job == requestCreate.job
      And assert response.id == requestCreate.id

  Scenario Outline: Check the service POST method with users a not exist

    * def requestCreate = read('classpath:karate/request/createUser/requestCreateUser.json')
    * def responsePost = read ('classpath:karate/request/createUser/responseCreateUser.json')

    Given path 'users'
    And request requestCreate
    And params { "name": <name>, "job": <job> }
    When method post
    Then status 201

    Examples:

      | name   |   job   |
      | @#$%&. |  @#$%&. |
      |  matia |  matia  |
      |    " " | ""      |

