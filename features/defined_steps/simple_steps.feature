Feature: Simple browsing steps

  With this steps you can:

  * open pages
  * click links
  * match page contet
  * match redirections

  Scenario: Simple browsing steps copy-pasted (and maybe improved) from cucumber-rails generator
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
