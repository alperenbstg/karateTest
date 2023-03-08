Feature: Get API headers feature
  Scenario: Pass the user request with headers
    Given url 'https://gorest.co.in/public/v2/users'
    And path '1688'
    When method GET
    Then status 200
    * print response