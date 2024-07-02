Feature: Plan de pruebas DEMO KARATE
  Background:
    * def urlBase = 'https://reqres.in'
    * def usersPath = '/api/users'
  @smoke
  Scenario: caso de pruebas POST 1
    Given url urlBase + usersPath
    When request {"name": "morpheus", "job": "leader"}
    And method POST
    Then status 201

  Scenario: caso de pruebas POST 2
    Given url urlBase + usersPath
    When request
    """
    {
    "name": "morpheus",
    "job": "leader"
    }
    """
    And method POST
    Then status 201