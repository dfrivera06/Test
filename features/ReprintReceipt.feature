Feature: Reprint receipt

@SmokeTest @ReprintReceipt
Scenario Outline: User should be able to reprint receipt 


Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When reprint permit link is clicked
Then reprint page displays
When reprint vin textbox is filled
And reprint name textbox is filled
And reprint receipt button is clicked
Then View Confirmation page is displayed
And receipt info is correct
And end program


Examples:
|test				|testName						|
|1					|ReprintReceipt			|
