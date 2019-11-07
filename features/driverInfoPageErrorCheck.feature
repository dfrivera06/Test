Feature: Driver info error check

@SmokeTest @DriverInfoErrorCheck

Scenario Outline: Proper errors should display if textbox is left blank

Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed
When certify user has read instructions checkbox is clicked
And continue button is clicked
Then driver info page is displayed
When first name is <firstName>
And middle name is <middleName>
And last name is <lastName>
And suffix is <suffix>
And driver license number is <license>
And day of birth is <day>
And month of birth is <month>
And year of birth is <year>
And last four digits is <fourDigits>
And certify request checkbox is <certifyRequest>
And continue button is clicked
Then proper errors displays
And end program


Examples:
|test				|testName														|firstName 	|middleName	|lastName		|suffix	|license	|day			|month		|year			|fourDigits	|certifyRequest		|
|1					|driverInfoALL											|blank			|blank			|blank			|blank	|blank		|blank		|blank		|blank		|blank			|blank						|
|2					|driverInfoFirstNameErrorCheck			|blank			|filled			|filled			|filled	|filled		|filled		|filled		|filled		|filled			|filled						|
|3					|driverInfoLastNameErrorCheck				|filled			|filled			|blank			|filled	|filled		|filled		|filled		|filled		|filled			|filled						|
|4					|driverInfoLicenseErrorCheck				|filled			|filled			|filled			|filled	|blank		|filled		|filled		|filled		|filled			|filled						|
|5					|driverInfoDayOfBirthErrorCheck			|filled			|filled			|filled			|filled	|filled		|blank		|filled		|filled		|filled			|filled						|
|6					|driverInfoMonthOfBirthErrorCheck		|filled			|filled			|filled			|filled	|filled		|filled		|blank		|filled		|filled			|filled						|
|7					|driverInfoYearOfBirthErrorCheck		|filled			|filled			|filled			|filled	|filled		|filled		|filled		|blank		|filled			|filled						|
|8					|driverInfoFourDigitErrorCheck			|filled			|filled			|filled			|filled	|filled		|filled		|filled		|filled		|blank			|filled						|
|9					|driverInfoCertifyRequestErrorCheck	|filled			|filled			|filled			|filled	|filled		|filled		|filled		|filled		|filled			|blank						|
