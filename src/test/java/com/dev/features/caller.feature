Feature: Calling another feature file

	Background:
	* def authFeature = call read('auth.feature@token')
	* def authToken = authFeature.authToken
	* def authFeature2 = call read('auth.feature@token2') {email: 'eve.holt@reqres.in', pwd: 'pistol'}
	* def authToken2 = authFeature2.authToken
	
  @tag1
  Scenario: call and get auth token
  Then print 'token:', authToken
  Then print 'token2:', authToken2
  