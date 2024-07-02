Feature: Config DEMO KARATE

Scenario: Config demo1
    Given print name
@ignore
Scenario: caso de pruebas GET
    Given url baseURL + '/users?page=2'
    When method GET
    Then status 200
     And  print response