Feature: Plan de pruebas DEMO KARATE
@smoke
  Scenario: caso de pruebas DELETE
    Given url 'https://reqres.in/api/users/2'
    When method DELETE
    Then status 204

