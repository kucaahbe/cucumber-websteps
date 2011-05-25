Feature: Web steps demonstration
  In order to write my awesome web application in BDD style
  As awesome developer
  I should have awesome web steps predefined for awesome me

  Scenario: Simple browsing steps copy-pasted (and maybe improved) form cucumber-rails generator
    Given I am on the home page
    When  I follow "some link"
    Then  I should be on the congratulations page
    And   I should see "Great, you can click links!"
    And   I should not see "some bla-bla"
    And   I should see /great/i
    And   I should not see /bla-bla/

    When  I go to the other page
    Then  I should be redirected to the congratulations page
    And   I should see "You was really redirected!"
