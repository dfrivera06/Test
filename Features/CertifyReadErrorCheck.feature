Feature: Certify read error check

@SmokeTest @CertifyReadError

Scenario Outline: Certify read error check

Given test number is <test>
And test name is <testName>
And user is on service Arizona page
When Motor Vehicle Record button is clicked
Then Motor Vehicle Record page is displayed
When continue button is clicked
Then certify that you read info error displays
And end program


Examples:
|test				|testName					|
|1					|CertifyReadError	|
