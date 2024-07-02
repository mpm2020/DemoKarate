Feature: DEMO KARATE HOOKS

  Background:
    * def foo = 'hello'
    * configure afterScenario =
      """
        function(){
        karate.log('after scenario:', karate.scenario.name);
        }
      """

  Scenario: first
    * print foo

  Scenario: second
    * print foo

  Scenario Outline: Example Outline
    * print <bar>

    Examples:
      | bar     |
      | foo + 1 |
      | foo + 2 |


