package com.example.factory;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class LandingPageFactory {
	private WebDriver driver;
	
	@FindBy(how=How.ID, using="size")
	@CacheLookup
	private WebElement sizeField;
	
	@FindBy(how=How.ID, using="range")
	@CacheLookup
	private WebElement rangeField;
	
	@FindBy(how=How.CSS, using="h1")
	private WebElement mainTitle;
	
	@FindBy(how=How.CSS, using="input[type='submit']")
	private WebElement submitButton;
	
	@FindBy(how=How.XPATH, using="html/body/div[2]/form/input[3]")
	private WebElement hiddenValue;
	
	public LandingPageFactory(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);
	}

	public String getPageTitle() {
		return driver.getTitle();
	}

	public String getMainHeader() {
		return mainTitle.getText();
	}

	public String getButtonLabel() {
		return submitButton.getAttribute("value");
	}

	public String getHiddenValue() {
		return hiddenValue.getAttribute("value");
	}

	public boolean isSizePresent() {
		return isElementPresent(sizeField);
	}

	public boolean isRangePresent() {
		return isElementPresent(rangeField);
	}

	public void setSizeValue(String value) {
		
		sizeField.clear();
		sizeField.sendKeys(value);
	}

	public void setRangeValue(String value) {
		rangeField.clear();
		rangeField.sendKeys(value);
	}

	public void clickLuckyNumbersButton() {
		submitButton.click();
	}

	private boolean isElementPresent(WebElement by) {
		String tag = by.getTagName();
		if( tag != null && !tag.contentEquals("")) {
			return true;
		}
		return false;
	}
}
