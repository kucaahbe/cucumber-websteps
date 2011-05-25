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
  * added 'I should be redirected to' step
  * 'I attach file' step will raise exception if file not found and will search file in features/support/attachments
