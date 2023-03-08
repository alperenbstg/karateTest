Feature: I try to in this case send a POST request

  Background:
    * url 'https://gorest.co.in'
    * def requestPayLoad =
    """
   {

"name":"Alperen",
"email":"gandalfthebestwizardever3332@alperen.com",
"gender":"male",
"status":"active"

   }
    """

  Scenario: I try to in this case send a POST request
    Given path '/public/v2/users'
    And request requestPayLoad
    And header Authorization = 'Bearer 7fc7c9e60a84439d9bf85105444e3777d4f8ac23d3fb3e2216d714980c1ba86f'
    When method post
    Then status 201
    And match $data.name == 'Alperen'
    * print response