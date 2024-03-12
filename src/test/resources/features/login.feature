Feature: Login

  @validData
  Scenario: Check User can login with valid data
    Given User launches Chrome browser
    When User opens ilcarro Main Page
    And User clicks on login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verifies Success message displayed
    And User quites browser

  @invalidPassword
  Scenario Outline: Check User can't login with invalid password
    Given User launches Chrome browser
    When User opens ilcarro Main Page
    And User clicks on login link
    And User enters valid email and invalid password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error message displayed
    And User quites browser
    Examples:
      | email         | password   |
      | qa31@mail.com | Qwerty0070 |
      | qa31@mail.com | qwerty007! |
      | qa31@mail.com | QWERTY007! |
      | qa31@mail.com | qwertyyyy! |
      | qa31@mail.com | 111111111! |
      | qa31@mail.com | !!!!!!!!!! |