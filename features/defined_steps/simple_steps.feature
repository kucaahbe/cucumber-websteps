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

    When  I go to the home page
    Then  I should see 2 elements kind of table's header
    And   I should see 6 elements kind of "table tr"
    And   I should not see elements kind of paragraphs
    And   I should not see elements kind of "div.some_class"

    When  I go to the other page
    Then  I should be redirected to the congratulations page
    And   I should see "You was really redirected!"
