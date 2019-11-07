//test comment

package com.example.tests.poms;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;

import com.example.factory.LandingPageFactory;
import com.example.factory.LotteryErrorPageFactory;
import com.example.tests.SeleniumTestUtilities;

public class InvalidSizeTest_POM {
   private WebDriver driver;
   private String baseUrl;
   private boolean acceptNextAlert = true;

   @BeforeEach
   public void setUp() {
      driver = SeleniumTestUtilities.getFirefoxDriver();
      baseUrl = "http://localhost:8080/Lottery";
      driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
   }

   @Test
   public void testInvalidSize() {
      driver.get(baseUrl + "/");
      LandingPageFactory page = new LandingPageFactory(driver);
      page.setSizeValue("0");
      page.setRangeValue("12");
      page.clickLuckyNumbersButton();
      
      LotteryErrorPageFactory errorPage = new LotteryErrorPageFactory(driver);
      assertEquals("Lottery Error", errorPage.getPageTitle());
      assertTrue(errorPage.getError()
    		  .matches("^The value supplied for the Number to pick is invalid!$"));
   }

   @AfterEach
   public void tearDown() {
      driver.quit();
   }
}
