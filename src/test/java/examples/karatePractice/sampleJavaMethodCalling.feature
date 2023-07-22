Feature: Test Java Method Call

  Scenario: Call Java non static method from Karate script
    * def Calculator = Java.type('examples.javaPackage.Calculator')
    * def calculator = new Calculator()
    * def result = calculator.add(5, 10)
    * print result
    * match result == 15

  Scenario: Call Java non static method from Karate script
    * def Calculator = Java.type('examples.javaPackage.Calculator')
    * def calculator = new Calculator()
    * def result = calculator.sub(15, 10)
    * print result
    * match result == 5

  Scenario: Call Java static method from Karate script
    * def Calculator = Java.type('examples.javaPackage.Calculator')
#    * def calculator = new Calculator()
    * def result = Calculator.mul(5, 10)
    * print result
    * match result == 50

  Scenario: Call Java static method from Karate script
    * def Calculator = Java.type('examples.javaPackage.Calculator')
#    * def calculator = new Calculator()
    * def result = Calculator.div(15, 10)
    * print result
    * match result == 1


