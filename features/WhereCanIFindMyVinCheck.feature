Feature: Where Can I Find My Vin Check

@SmokeTest @WhereCanIFindMyVinCheck
Scenario Outline: Where Can I Find My Vin should display a image of where to locate Vin

Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
Then three day permit page displays
When begin three day permit button is clicked
Then test printer page displays
When continue button is clicked
Then Enter VIN page displays
When Where Can I Find My Vin link is clicked
Then pop up displays with vin location
And exit window
And go back to three day page
Then three day permit page displays
When reprint permit link is clicked
Then reprint page displays
When Where Can I Find My Vin link is clicked
Then pop up displays with vin location
And end program


Examples:
|test				|testName										|
|1					|WhereCanIFindMyVinCheck		|
