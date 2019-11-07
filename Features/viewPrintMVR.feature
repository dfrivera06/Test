Feature: View/Print MVR

@SmokeTest @ViewPrintMVR

Scenario Outline: View print MVR button is pressed and take 
screenshots.

Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed
When certify user has read instructions checkbox is clicked
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
When view/print MVR button is clicked
Then print MVR file
And end program


Examples:
|test				|testName			|
|1					|viewPrintMVR	|
