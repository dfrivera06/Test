Feature: Resize window test

@SmokeTest @ResizeTest
Scenario Outline: Resize window test

Given test number is <test>
And test name is <testName>
And user is on service arizona page
And resize window
When three day permit button is clicked
Then three day permit page displays
And resize window
When begin three day permit button is clicked
Then test printer page displays
And resize window
When continue button is clicked
Then Enter VIN page displays
And resize window
When three day VIN textbox is filled
And certify checkbox is selected
And continue button is clicked
Then Three Day Permit Confirm and Edit Data displays
And resize window
And go back to three day page
Then three day permit page displays
When reprint permit link is clicked
Then reprint page displays
And resize window
And end program


Examples:
|test				|testName			|
|1					|ResizeTest		|
