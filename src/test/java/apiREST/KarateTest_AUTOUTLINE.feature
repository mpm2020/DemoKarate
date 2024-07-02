Feature: Plan de pruebas DEMO KARATE

  Scenario Outline: caso de pruebas GET <nombreCaso>
    Given url 'https://reqres.in/api/users/<ID>'
    When method GET
    Then status <estadoHTTP>
    Examples:
    | nombreCaso      | ID | estadoHTTP |
    |caso id 1        | 1  | 200        |
    |caso id 2        | 2  | 200        |
    |caso id 3        | 3  | 200        |
    |caso id not found| 50 | 404        |


  Scenario Outline: caso de pruebas POST <nombreCaso>
    Given url 'https://reqres.in/api/users'
    When request {"<name>": <Vname>, "<job>": <Vjob>}
    And method POST
    Then status 201
      Examples:
        | nombreCaso        | name | Vname      |  job   | Vjob     |
        |name  vacio        | name |            |  job   | "QA"     |
        |name  nulo         | name |  null      |  job   | "QA"     |
        |name tres letras   | name | "morpheus" |  job   | "leader" |
        |name tres letras   | name | "morpheus" |  job   | "leader" |


  Scenario Outline: Caso de Prueba POST
    Given url 'https://jsonplaceholder.typicode.com/posts'
    When request {"<title>": <Vtitle>,"<body>": <Vbody>,"<userId>":<VuserId>}
    And method POST
    Then status 201
    Examples:
      | title | Vtitle     | body | Vbody    | userId | VuserId |
      | title | "morpheus" | body | "leader" | userId | 3       |
      | title | "morpheus" | body | "leader" | userId | 4       |