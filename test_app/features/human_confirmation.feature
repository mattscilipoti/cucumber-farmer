Feature: Humans can confirm test results

  In order to ensure that humans can be utilized and incorporated into acceptance testing flow
  As a human tester
  I want be able to receive information and provide feedback
  
  Scenario: Basic Yes/No Dialog
    Then I should say "I can see a yes/no dialog box"
  
  Scenario: Info Box
    When I display the message "TEST MESSAGE.  Please close me."
    Then I should say "I saw the 'TEST MESSAGE'"
    
  Scenario: Single Warning (dialog)
    Given this warning is displayed:
      |dialog|

    Then I should say "I am aware that dialogs will used for manual verification" 
    
  Scenario: Multiple warnings (dialog & firefox)
    Given these warnings are displayed:
      |dialog|
      |firefox|

    Then I should say "I am aware that dialogs will used for manual verification" 
    Then I should say "I saw an informational warning about firefox requirements" 
  