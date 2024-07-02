Feature: Plan de pruebas Karate
  Scenario: Caso de Prueba GET1
    Given url 'https://jsonplaceholder.typicode.com/users/1'
    When method GET
    Then status 200
    And match response.name == "Leanne Graham"

 @smoke
  Scenario: Caso de Prueba GET2
    Given url 'https://jsonplaceholder.typicode.com/users/2'
    When method GET
    Then status 200
    And match response.username == "Antonette"

  @regression
  Scenario: Caso de Prueba GET3
    Given url 'https://jsonplaceholder.typicode.com/users/3'
    When method GET
    Then status 200
    And match response.email == "Nathan@yesenia.net"
