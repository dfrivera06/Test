Feature: Back button check

@SmokeTest @BackButtonCheck

Scenario Outline: Back button check

Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed

#Driver info page back check
When certify user has read instructions checkbox is clicked
And continue button is clicked
Then driver info page is displayed
When back button is clicked
Then Motor Vehicle Record page is displayed

#Driver info confirm page back check
And continue button is clicked
Then driver info page is displayed
When first name is filled
And middle name is filled
And last name is filled
And suffix is blank
And driver license number is filled
And day of birth is filled
And month of birth is filled
And year of birth is filled
And last four digits is filled
And certify request checkbox is filled
And continue button is clicked
Then driver info confirm page displays
When back button is clicked
Then driver info page is displayed
And end program


Examples:
|test				|testName									|
|1					|backbuttonCheck					|
