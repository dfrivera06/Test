Feature: Spanish Test

@SmokeTest @SpanishTest

Scenario Outline: Confirm language change with 
language button is clicked

Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed
And spanish button is clicked
And continue button is clicked
And mvr page spanish check
When certify user has read instructions checkbox is clicked
And continue button is clicked
Then driver info page is displayed
And continue button is clicked
And driver info page spanish check
When spanish first name is filled
And spanish middle name is filled
And spanish last name is filled
And suffix is blank
And spanish driver license number is filled
And spanish day of birth is filled
And spanish month of birth is filled
And spanish year of birth is filled
And spanish last four digits is filled
And certify request checkbox is filled
And continue button is clicked
Then driver info confirm page displays
And driver info check spanish check
When continue button is clicked
Then payment page displays
When cardname is filled
And card number is filled
And expiration date is filled
And CVV is filled
And daytime phone is filled
And email is filled
And submit payment button is clicked
Then print MVR page displays
And print MVR spanish check
When continue button is clicked
Then request for title page displays
And request for title spanish check
When continue to survey button is clicked
Then survey page displays
And survey page spanish check
When submit survey button is clicked
Then thank you page displays
And end program


Examples:
|test				|testName					|
|1					|SpanishTest			|
