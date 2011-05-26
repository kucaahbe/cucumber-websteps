Feature: Forms steps

  Steps for various forms interaction

  Scenario: Simple form steps
    Given I am on the form page
    When I fill in "Name" with "my name"
    And I fill in "Describe yourself" with:
    """
    this usefull
    for textareas
    """
    Then the select "Sex" should have following options:
      |        |
      | Female |
      | Male   |
    When I select "Male" from "Sex"
    And I check "Accept user agrement"
    And I uncheck "Send me letters"
    And I choose "radio 1"
    And I attach the file "avatar.png" to "Avatar"
    Then the select "Your favorite colors" should have following options:
      | black  |
      | white  |
      | red    |
      | green  |
      | yellow |
      | blue  |
    When I select following values from "Your favorite colors":
      | red   |
      | blue  |
      | green |
    And I unselect following values from "Your favorite colors":
      | green |
    Then the "Name" field should contain "my name"
    And the "Describe yourself" field should contain "this usefull\nfor textareas"
    #And the "Name" field should not contain "not my name" --> failing in 1.9.2
    And the "Accept user agrement" checkbox should be checked
    And the "Do not touch me" checkbox should not be checked
    #And the radio should be selected
    And the following values should be selected in "Your favorite colors":
      | red   |
      | blue  |
    And the following values should not be selected in "Your favorite colors":
      | black  |
      | white  |
      | green  |
      | yellow |
    When I press "Submit"
    Then I should see "Form submited!"
    And I should see "Name: my name"
    And I should see "About me: this usefull for textareas"
    And I should see "Sex: Male"
    And I should see "Accepted user agrement: Yes"
    And I should see "Like spam? No"
    And I should see "radio: radio 1"
    And I should see "Your favorite colors: red,blue"
    #And I should see "TODO something with avatar"

  Scenario: Massive form filling
    Given I am on the form page
    When I fill in the following:
      | Name                            | my name    |
      | Sex                  (select)   | Male       |
      | Accept user agrement (checkbox) | check      |
      | Send me letters      (checkbox) | uncheck    |
      | radio 1              (radio)    | choose     |
      | Avatar               (file)     | avatar.png |
    Then the "Name" field should contain "my name"
    #And the "Name" field should not contain "not my name" --> failing in 1.9.2
    And the "Accept user agrement" checkbox should be checked
    And the "Do not touch me" checkbox should not be checked
    #And the radio should be selected
    #And selectbox should contain
    When I press "Submit"
    Then I should see "Form submited!"
