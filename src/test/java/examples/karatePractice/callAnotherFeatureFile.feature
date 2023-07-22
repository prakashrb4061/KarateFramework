Feature: Try to call scenario present in another feature file or same feature file

  @CalledScenario
  Scenario: Add to Numbers
    * def num1 = 2
    * def num2 = 3
    * print num1 + num2
    * karate.log("We are inside the Called Scenario \n")

  @CallingScenario
  Scenario: Call any existing scenario
    * def a = 2
    * def b = 1
    * karate.log('Calling Add scenario')
    * def addNumScenario = call read('file:src/test/java/examples/karatePractice/callAnotherFeatureFile.feature@CalledScenario')
    * print a-b

# ----------------------------------------------------

  @CalledScenarioWithPassingParameters
  Scenario: Add to Numbers with passing parameters
    * def num1 = num1
    * def num2 = num2
    * print num1 + num2
    * karate.log("We are inside the Called Scenario \n")

  @CallingScenarioByPassingParameters
  Scenario: Call any existing scenario by passing parameters
    * def a = 2
    * def b = 1
    * karate.log('Calling Add scenario')
    * def addNumScenario = call read('file:src/test/java/examples/karatePractice/callAnotherFeatureFile.feature@CalledScenarioWithPassingParameters') {num1: #(a), num2: #(b)}
    * print a-b
