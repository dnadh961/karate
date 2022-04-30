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
	
@token2	@ignore
Scenario: Authentication Test using form fields

	* def params = 
	"""
		{
			'email': '#(email)',
			'password': '#(pwd)'
		}
	"""
	And form fields params
	When method POST
	Then status 200
	* def authToken = response.token
	And print 'response---', response
	And print 'token:', authToken
	
Scenario: Dummy Test

	And print 'Dummy Test'
	