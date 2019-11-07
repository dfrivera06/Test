Feature: Confirm and Edit Data error check

@SmokeTest @ConfirmAndEditErrorCheck

Scenario Outline: Confirm and Edit Data error check

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
When name is <name>
And date of birth is <birth>
And social security number is <social>
And driver license number is <license>
And continue button is clicked
Then proper Confirm and Edit error displays
And end program


Examples:
|test				|testName																	|name			|birth		|social		|license	|
|1					|ConfirmAndEditErrorCheckALL							|blank		|blank		|blank		|blank		|
|2					|ConfirmAndEditErrorCheckLicenseBlank			|correct	|correct	|correct	|blank		|
|3					|ConfirmAndEditErrorCheckSocialBlank			|correct	|correct	|blank		|correct	|
|4					|ConfirmAndEditErrorCheckBirthdayBlank		|correct	|blank		|correct	|correct	|
|5					|ConfirmAndEditErrorCheckNameBlank				|blank		|correct	|correct	|correct	|
