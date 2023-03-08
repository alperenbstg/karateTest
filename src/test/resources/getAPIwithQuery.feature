Feature: GetApi Wtih query parameters
  Scenario: GetApi all active users

    * def query = {status : 'active', gender : 'female'}

    Given url 'https://gorest.co.in/public/v2/users'
    And params query
    When method get
    Then status 200
    * print response