@loginGeneric
Feature: Total Balance

  As a User
  I want to add the values of the given screen
  So that i can match with the total balance

  Scenario Outline: Verify Balance

    Given user is navigates using <browser> with <siteengine>
    When user logged into<siteengine> <clhurl> with<userid>with <password>
    Then the user is able to login<siteengine>
    When user wants to enter data into <siteengine> with <value1> and <value2> and <value3> and <value4> and <value5>
    When user wants to verify total balance <siteengine> with <value1> and <value2> and <value3> and <value4> and <value5>
    Then user able to validates total balance<siteengine> with <value1> and <value2> and <value3> and <value4> and <value5>

  Scenarios:
    | browser | clhurl | userid | password | siteengine | value1 | value2 | value3 | value4 | value5 |
    | chrome |  |  |  | clh | 122,365.24 | 599.00 | 850,139.99 | 23,329.50 | 566.27 |