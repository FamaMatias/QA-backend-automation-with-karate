Feature: Service client Get
  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check the service with method GET

      * def responsesGet = read('classpath:karate/request/singleUser/responseSingleUser.json')
      * def dataGet = read('classpath:karate/request/singleUser/dataSingleUser.json')

      Given path "users","2"
      When method get
      Then status 200
      And match response == responsesGet
      And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"
      And assert response.data.email == dataGet.email
      And assert response.data.id == idGet
      And assert response.data.first_name == dataGet.first_name
      And assert response.data.last_name == dataGet.last_name
      And assert response.data.avatar == dataGet.avatar

    Scenario Outline: Users a not exist

      Given path "users",<idUser>
      When method get
      Then status <statusCode>

      Examples:
      | idUser    | statusCode |
      | 1996      | 404        |
      | "Q#$%&/"  | 404        |
      | "miguel"  | 404        |
