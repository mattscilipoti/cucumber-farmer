begin
  gem 'mattscilipoti-rdialog', '>=0.5.0'
  require 'mattscilipoti-rdialog'
rescue LoadError
  puts "REQUIRED: dialog & rdialog are required.\n  `sudo apt-get install dialog`\n  `gem install mattscilipoti-rdialog`"
  exit
end

#  When I display the message "message goes here"'
#Displays info box containing the message
When /^I display the message "([^\"]*)"$/ do |message|
  dialog = RDialog.new
  dialog.infobox(message)
end

When /^I display these Files:$/ do |table|
  files = table.rows.collect { |row| row[0] }

  view_in_firefox(*files)
end

def dialog_timeout
  5 #seconds
end

#  Then I should say "confirmation request goes here"'
#Displays a dialog box containing the message
#User response is used to pass/fail the test
#Cancel/No fails test
Then /^I should say "([^\"]*)"$/ do |question|
  response = nil
  dialog = RDialog.new
  dialog.timeout = dialog_timeout
  msg = %Q{#{question}?

  This dialog will timeout after #{dialog_timeout} secs.}
  response = dialog.yesno(question + '?')

  assert response
end

#  Given these warnings are displayed:
#    |dialog |
#    |firefox|
# Displays named warnings to humans.
# dialog: inform them that their input will be requested
# firefox: specifies firefox requirements.
Given /^(?:these warnings are|this warning is) displayed:$/ do |table|
  table.raw.flatten.inject(warnings = []) do |warning_messages, warning_name|
    msg = warning_for(warning_name)
    warning_messages << msg
  end

  dialog = RDialog.new
  dialog.timeout = 30 #seconds
  dialog.msgbox(warnings.join('\n--------------------------\n'))
end

def dialog_warning
  <<WARN
Dialog Warning: Some of these scenarios will ask you to manually verify steps.
Yes/No dialogs will timeout after #{dialog_timeout} secs.

test
WARN
end

def firefox_warning
  <<WARN
Firefox Notice: profile 'cucumber' expected.\n
If this profile doesn't exist, ProfileManager will automatically be displayed so you can add it (or use 'firefox -ProfileManager')
To ensure tests wait until Firefox is closed, please ensure ALL instances of Firefox using the 'cu Profile are closed.
You can leave instances from other profiles open.
WARN
end

def view_in_firefox(*files)
  file_args = files.join(' ')
  `firefox -P cucumber -no-remote #{file_args}`
end

def warning_for(identifier)
  send("#{identifier.to_s}_warning")
end
