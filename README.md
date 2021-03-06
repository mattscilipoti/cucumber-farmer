# cucumber-farmer

A library of cucumber step definitions, which allow you to use a human to assert conditions during acceptance tests.

Hosted at: http://github.com/mattscilipoti/cucumber-farmer

## Why?
Some requirements are simple for a human to confirm, but are very difficult to assert using automation.
Farmer allows us to include human confirmation into our normal testing flow.
For example, we needed to verify that certain portions of an image were 'blacked out'.

## What?
Farmer utilizes rdialog to allow you to:
* Present messages
* Display files
* Ask a human for confirmation

## Example
    When I display the message "Please review the following images.  \nEnsure 'Frame' and 'Speed Data' items are hidden."
    And I display these Files:
      |filename|
      |images/processed_a.jpg|
      |images/processed_b.jpg|

    Then I should say "'Frame' item is hidden in all images"
    Then I should say "'Speed Data' item is hidden in all images"

This will:
* Display an info box to the user, informing them of the upcoming test, then...
* Open a new page in firefox to display the named files (in tabs).
* Once the user closes all the tabs, confirmation dialogs will be displayed.

## Installation

Install dialog library:
    $ apt-get install dialog
  or
    $ brew install dialog

Install the gem:
    $ gem install cucumber-farmer

In features/support/env.rb:
    require 'farmer/step_definitions'

## Test
Two levels of testing are required.  Library testing and 'usage as a gem' testing.
#### Usage as gem:
A (sinatra) test app is included, containing some acceptance tests.
Interestingly, these tests ask you to verify farmer's functionality.

    cd test_app
    cucumber

#### Test the library:
This library was extracted from an existing app.
It was created test-first (mostly), but extracting the tests is harder than extracting code.
Test are added regularly.
  rake

## Docs
[github](http://github.com/mattscilipoti/cucumber-farmer) and [rdoc](http://rdoc.info/github/mattscilipoti/cucumber-farmer)

## Questions?
* Check out step_definitions/dialog_steps.
* If that doesn't help, see Issues.

## Issues?
* Create an issue on github (https://github.com/mattscilipoti/cucumber-farmer/issues)


## TODO:
* expand test coverage to unit tests
* add step_definitions to rdoc.
* utilize pickle foundation.
* make dialog timeout configurable.
* namespace
* cross platform support
** http://github.com/danopia/luck/tree/master/lib/luck ?
** http://github.com/rkumar/ncurses ?
** http://github.com/gooch/RDialogy ?

## Note on Patches/Pull Requests
* Fork the project.
* Since you will probably want to utilize your own copy, while waiting for upstream to include your pull request,
  I recommend creating a branch named 'upstream'.
* Make your changes in a topic and merge them into 'master' and 'upstream'.
  This way, 'master' can have your readme, version, etc.
* Please, do not mess with rakefile or version files in the 'upstream' branch.
* Add tests for it. This is important.  I don't want break it in a
  future version unintentionally.
* Commit.
* Send me a pull request from 'upstream' or the topic branch.

## Copyright

Copyright (c) 2010 Matt Scilipoti. See LICENSE for details.

<script type="text/javascript" src="http://www.ohloh.net/p/485563/widgets/project_thin_badge.js"></script>
