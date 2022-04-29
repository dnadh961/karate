Feature: Calling another feature file

	Background:
	* def authFeature = call read('auth.feature@token')
	* def authToken = authFeature.authToken

  @tag1
  Scenario: call and get auth token
  Then print 'token:', authToken
  