Feature: Test JavaScript Function Call

  Scenario: Call JavaScript function from Karate script
    * def text =
    """
      function(name){
        return "Hello " + name
      }
    """
    * def result = text("Prakash")
    * karate.log("Result : ", result)
