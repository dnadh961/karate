Feature: fetching User Details
 
Scenario: testing the get call for User Details
 
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200
And match response == { data: '#notnull', support: '#notnull'}
And match $.data.first_name == '#regex \\w{5}'
And match $.data.id == '#? _ < 3'