Feature: Validate the API calling and their response

  Scenario Outline: Validate GET Requests
    Given url 'https://reqres.in/api/users'

    # variables
    * def pageNum = 1

    * param page = pageNum

    # method calling
    When method GET

    # validating the status of API response
    Then status 200

    # print API response
    And print response

    # print API response time
    * print responseTime

    # convert string into integer (Number)
    * def eId = parseInt(<expectedId>)

    # Fuzzy Matches
    * match response.data[0].id == '#number'
    * match response.data[0].first_name == '#string'

    # Exact matches
    * match response.data[0].id == eId
    * match response.data[0].first_name == '<expectedFirstName>'

    # Complex fuzzy matches
    * match response.data[0].id == '#number? _ > 0'

    Examples:
      | expectedId | expectedFirstName |
      | 1          | George            |
      | 2          | Janet             |


  Scenario Outline: Calling POST API
    Given url 'https://reqres.in/'
    And path 'api/users'
    * def eName = '<name>'
    * def eJob = '<job>'

    # Pass values in request using embedded expression ---- Format (#(variableName))
    * request {"name": #(eName), "job": #(eJob)}
    When method POST
    Then status 201
    * print response



    Examples:
      | name  | job         |
      | Jack  | Engineer    |
      | Julie | SupportTech |


