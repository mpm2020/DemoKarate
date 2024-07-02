Feature: Plan de pruebas DEMO KARATE
Background:
  * def urlBase = 'https://reqres.in'
  * def usersPath = '/api/users'

  Scenario: caso de pruebas GET
   Given url 'https://reqres.in/api/users/2'
   When method GET
   And match response.data.first_name =='Janet'
   Then status 200

  Scenario: caso de pruebas GET 2
   Given url 'https://reqres.in/api/users/2'
   When method GET
   And match response.data.id == 2
   Then status 200

  @smoke
  Scenario: caso de pruebas GET 3
    Given url urlBase + usersPath + '?page=2'
    When method GET
    And print response

  @smoke
  Scenario: caso de pruebas GET 4
    Given url urlBase + usersPath
    When method GET
    And print response

  Scenario: caso de pruebas GET 5
    Given url urlBase + usersPath
    When method GET
    And print response

  Scenario: caso de pruebas GET 6
    Given  url 'https://reqres.in/api/users/2'
    When method GET
    And match response.data.first_name contains 'Janet'

  Scenario: caso de pruebas GET 7
    Given url 'https://reqres.in/api/users/2'
    When method GET
    And match response.data.first_name != 'George'