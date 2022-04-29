Feature: POSTCallReadingDataTable

  Background:
    * url 'https://43db3005-4ed9-4bab-b0a3-bb066e79e816.mock.pstmn.io'

  Scenario Outline: create a user from given details.

    Given path '/POSTUser'
    And request {firstName:<firstName>, lastName:<lastName>,username:<userName>,email:<email>}
    When method post
    Then status 404
    Then print response
    And match $.error == '#notnull'
    And match $.error.message == 'Please refresh and try again.'

    Examples:
      | firstName       | lastName       | username       | email                |
      | John            | Wick           | john123        | johnwick@gmail.com   |
      | Wiz             | Vegas          | wizGamer       | wiz1122@gmail.com    |
      
#or
# | read('karateTestData.csv') |
      
# Content of karateTestData.csv
# firstName,lastName,username,email
# Mike,,Posner,mike1234@gmail.com
# Steve,Aoki,steveyy,steve556677@gmail.com
# Afro,Jack,afroJack,afro998877@gmail.com