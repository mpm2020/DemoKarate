Feature: Plan de pruebas DEMO KARATE

  Scenario Outline: caso de pruebas GET <nombreCaso>
    Given url 'https://reqres.in/api/users/<ID>'
    When method GET
    Then status <estadoHTTP>
    Examples:
      | read('test.csv' )|
