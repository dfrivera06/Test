Feature: Reprint receipt error check

@SmokeTest @ReprintReceiptErrorCheck
Scenario Outline: Proper error message should display if name or vin is blank in reprint receipt page. 


Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When reprint permit link is clicked
Then reprint page displays
When reprint vin textbox is <VIN>
And reprint name textbox is <name>
And reprint receipt button is clicked
Then proper reprint error message displays
And end program


Examples:
|test				|testName															|VIN				|name			|
|1					|reprintVinError,reprintNameError			|blank			|blank		|
|2					|reprintVinError											|blank			|filled		|
|3					|reprintNameError											|filled			|blank		|
|4					|reprintVehicleNotFoundError					|notFound		|notFound	|
