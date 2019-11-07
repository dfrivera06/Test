Feature: Quit button test

@SmokeTest @QuitButtonTest
Scenario Outline: Quit button test 


Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When three day permit button is clicked
Then three day permit page displays
When begin three day permit button is clicked
Then test printer page displays
When quit button is clicked
Then quit pop up displays
And quit option is selected
And user is directed back to service Arizona page
When three day permit button is clicked
Then three day permit page displays
When begin three day permit button is clicked
Then test printer page displays
When continue button is clicked
Then Enter VIN page displays
When quit button is clicked
Then quit pop up displays
And quit option is selected
And user is directed back to service Arizona page
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
When quit button is clicked
Then quit pop up displays
And quit option is selected
And user is directed back to service Arizona page
And end program


Examples:
|test				|testName						|
|1					|QuitButtonTest			|
