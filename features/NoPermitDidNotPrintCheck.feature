Feature: No permit did not print test

@NoPermitDidNotPrint
Scenario Outline: No permit did not print test should display proper pop-up

Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When begin three day permit button is clicked
Then test printer page displays
When continue button is clicked
Then Enter VIN page displays
When three day VIN textbox is filled
And certify checkbox is selected
And continue button is clicked
Then Three Day Permit Confirm and Edit Data displays
And Vehicle Record Information data is correct
When name is correct
And date of birth is correct
And social security number is correct
And driver license number is correct
And continue button is clicked
Then Payments page displays
When cardholder name is filled
And cardholder number is filled
And expiration date  is filled
And cvv is filled
And daytime phone is filled
And email is filled
And submit payment button is clicked
Then print permit page is displayed
When no permit did not print button is clicked
Then help pop up displays
And end program


Examples:
|test				|testName								|
|1					|noPermitDidNotPrint		|
