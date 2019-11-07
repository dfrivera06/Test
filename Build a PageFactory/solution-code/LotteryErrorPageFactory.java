package com.example.factory;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;
import org.openqa.selenium.support.PageFactory;

public class LotteryErrorPageFactory {
	private WebDriver driver;
	
	@FindBy(how=How.CSS, using="h1")
	private WebElement mainTitle;
	
	@FindBy(how=How.CSS, using="h3")
	private WebElement error;
	
	@FindBy(how=How.CSS, using="//input[value='Try Again']")
	private WebElement button;
	

	public LotteryErrorPageFactory(WebDriver driver) {
		this.driver = driver;
		PageFactory.initElements(driver, this);

	}
	
	public String getPageTitle() {
		return driver.getTitle();
	}
	
	public String getMainHeader() {
		return mainTitle.getText();
	}
	
	public String getError() {
		return error.getText();
	}
	
	public void clickTryAgainButton() {
		button.click();
	}

}
