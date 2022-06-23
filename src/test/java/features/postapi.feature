Feature: Place an order for an available pet using post api

  Background: 
    * url 'https://petstore.swagger.io/v2'
    * def requestPayload =
      """
      {
        
      "id": 9,
      "petId": 3,
      "quantity": 3,
      "shipDate": "2022-06-23T12:27:19.105Z",
      "status": "placed",
      "complete": true
      
         }

      """

  Scenario: 

  Scenario: Place an order with the given data
    Given path '/store/order'
    And request requestPayload
    And header Authorization = 'Bearer ' + tokenID
    When method post
    Then status 200
    * def jsonResponse = response
    * print jsonResponse
    And match $.jsonResponse.id == 9
