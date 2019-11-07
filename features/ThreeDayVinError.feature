Feature: Three Day Vin Error

@SmokeTest @ThreeDayVinError
Scenario Outline: While user is preparing three day permit, proper error messages
should display when neccessary.


Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When begin three day permit button is clicked
Then test printer page displays
When continue button is clicked
Then Enter VIN page displays
When three day VIN textbox is <VIN>
And certify checkbox is <certify>
And continue button is clicked
Then proper three day error displays
And end program


Examples:
|test				|testName																|VIN			|certify	|
|1					|beginThreeDayVIN,beginThreeDaycertify	|blank		|no				|
|2					|beginThreeDayVIN												|blank		|yes			|
|3					|beginThreeDaycertify										|filled		|no				|
