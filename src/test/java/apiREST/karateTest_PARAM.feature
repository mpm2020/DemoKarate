Feature: Plan de pruebas DEMO KARATE
  Scenario: caso de pruebas GET
    Given url 'https://reqres.in/api/users/2'
    When 'Content-Type'='Application/json'
    #Estos comandos en Karate se utilizan para configurar el tiempo de espera de conexión y el tiempo de espera de lectura.
    * configure connectTimeout=120000
    * configure readTimeout=120000
    When method GET
    And match response.data.first_name =='Janet'
    Then status 200