Unreleased
----------

* TODO: add steps to work with tables
* TODO: added 'about disabled form fields'
* TODO: handle disabled form fields

0.10.0
------

* fixed cucumber i18n deprecation warning
* updated capybara to >= 1.1.2

0.9.0
-----

* added and improved standard cucumber websteps:
  * 'I fill in "field"...' :

	    When I fill in "TextArea" with:
	    """
	    some
	    bla
	    bla
	    """

  * 'I fill in the following' now can handle selects, checkboxes and radiobuttons:

	    When I fill in the following:
	      | Name                            | my name    |
	      | Sex                  (select)   | Male       |
	      | Accept user agrement (checkbox) | check      |
	      | Send me letters      (checkbox) | uncheck    |
	      | radio 1              (radio)    | choose     |
	      | Avatar               (file)     | avatar.png |
  * 'I attach file' step will raise exception if file not found and will search file in features/support/attachments
  * improved 'I should see //...' step to add options to regexp
* added 'I should be redirected to' step(but not finished)
* added 'I select following values'
* added 'I unselect following values'
* added 'the select "select" should have following options'
* added 'the following values should be selected'
* added 'the following values should not be selected'
* added 'I should see 2 elements kind of ...'
* added 'I should not see elements kind of ...'
