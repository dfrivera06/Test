Feature: Spanish test

@SmokeTest @SpanishTest
Scenario Outline: After selecting switch to spanish, all text should be in spanish. Also
when user reboots web browser, spanish should be the text language. 

Given test number is <test>
And test name is <testName>
And user is on service arizona page
When three day permit button is clicked
And page is in spanish
When begin three day permit button is clicked
And page is in spanish
When continue button is clicked
And page is in spanish
When three day VIN textbox is filled
And certify checkbox is selected
And continue button is clicked
And page is in spanish
And go back to three day page
When reprint permit link is clicked
And page is in spanish
And end program


Examples:
|test				|testName			|
|1					|SpanishTest	|
