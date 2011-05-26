Cucumber web steps [![Build Status](http://travis-ci.org/kucaahbe/cucumber-websteps.png)](http://travis-ci.org/kucaahbe/cucumber-websteps)
==========================================================================================================================================

Description
-----------

[Capybara](http://github.com/jnicklas/capybara) powered common cucumber web steps for any web application (blackjack and hookers included).

<strong>Because!</strong>

* Here collected [all "web steps"](http://github.com/cucumber/cucumber-rails/blob/master/lib/generators/cucumber/install/templates/step_definitions/web_steps.rb.erb) you need and even more([<b>-=INCLUDED STEPS DOCUMENTATION LINK=-</b>](http://relishapp.com/kucaahbe/cucumber-websteps))
* Support your favorite testing framework (test/unit, minitest, rspec-1, rspec-2) <b>Note:</b> not yet tested with rspec-1, coming soon
* work with both :rack\_test and :selenium drivers
* all in one place, DRY.
* [launchy](http://rubygems.org/gems/launchy) included :)
* blackjack and hookers  ;)

Install
-------

1. install gem

   run in console:

       [sudo] gem install cucumber-websteps

   or add to Gemfile:

       gem 'cucumber-websteps'

2. setup in application

   if you are using rails, then you already <b>have (and know about)</b> following files:

   <b>features/support/paths.rb</b>

   <b>features/support/selectors.rb</b>

   they should be as they is, if you do not have these files or don't know what they are then just add them with [this content](http://gist.github.com/993837)
   <script src="https://gist.github.com/993837.js?file=paths.rb"></script>
   <script src="https://gist.github.com/993837.js?file=selectors.rb"></script>
   and replace (or add) <b>features/step_definitions/web_steps.rb</b> with [this content](http://gist.github.com/993837#file_web_steps.rb)
   <script src="https://gist.github.com/993837.js?file=web_steps.rb"></script>

3. run your features!

TODO: add footer
