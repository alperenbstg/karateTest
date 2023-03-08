Feature: GET API test

  Scenario: I will try to send GET request to Endpoint
    Given url  baseUrl + '/public/v2/users'
    And path '1688'
    When method GET
    Then status 200
    * print response
    * def jsonResponse = response
    * print jsonResponse
    * def actName = response.name
    * print actName
    * match actName == 'Apsara Butt'

  Scenario: I will try to send GET request to Endpoint with negative scnario
    Given url 'https://gorest.co.in/public/v2/users'
    And path '1'
    When method GET
    Then status 404
