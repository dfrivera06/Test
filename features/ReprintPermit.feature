Feature: Reprint permit

@SmokeTest @ReprintPermit
Scenario Outline: User should be able to reprint permit 


Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When reprint permit link is clicked
Then reprint page displays
When reprint vin textbox is filled
And reprint name textbox is filled
And reprint permit button is clicked
Then print permit page is displayed
When View and Print Permit button is clicked
Then permit displays
And end program


Examples:
|test				|testName						|
|1					|ReprintPermit			|
