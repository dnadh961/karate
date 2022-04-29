Feature: Api Authentication

Background:
	* url 'https://reqres.in/api/register'

@token	
Scenario: Authentication Test

	And form field email = 'eve.holt@reqres.in'
	And form field password = 'pistol'
	When method POST
	Then status 200
	* def authToken = response.token
	And print 'response---', response
	And print 'token:', authToken
	
Scenario: Dummy Test

	And print 'Dummy Test'
	