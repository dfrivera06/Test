Feature: Resize test

@SmokeTest @ResizeTest

Scenario Outline: Resize test will go to every page and resize the window to
five different size windows and take screen shots.

# 320X480 Extra small phone
# 448X768 Phone size
# 680X800 Tablet size
# 1080X800 Regular desktop
# 1280_768 Large desktop


Given test number is <test>
And test name is <testName>
And user is on service Arizona page
And resize window
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed
And resize window
When certify user has read instructions checkbox is clicked
And continue button is clicked
Then driver info page is displayed
And resize window
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
And resize window
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
And resize window
When continue button is clicked
Then request for title page displays
And resize window
When continue to survey button is clicked
Then survey page displays
And resize window
When submit survey button is clicked
Then thank you page displays
And resize window
And end program


Examples:
|test				|testName			|
|1					|ResizeTest		|
