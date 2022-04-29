Feature: fetching User Details

Background:
	* url 'https://reqres.in/'
 
Scenario: testing the get call for User Details
 
Given path 'api/users/2'
When method GET
Then status 200
And match response == { data: '#notnull', support: '#notnull'}
And match $.data.first_name == '#regex \\w{5}'
And match $.data.id == '#? _ < 3'