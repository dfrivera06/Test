package com.example.tests.poms;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.concurrent.TimeUnit;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.openqa.selenium.WebDriver;

import com.example.factory.LandingPageFactory;
import com.example.tests.SeleniumTestUtilities;

public class LandingPageTest_POM {
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
   public void testLandingPage() {
      driver.get(baseUrl + "/");
      LandingPageFactory page = new LandingPageFactory(driver);
      
      assertEquals("Lottery", page.getPageTitle());
  
      assertEquals("Welcome to our Lottery System", page.getMainHeader());
      assertTrue(page.isSizePresent());
      assertTrue(page.isRangePresent());
 
      assertEquals("Pick My Lucky Numbers", page.getButtonLabel());
      assertEquals("yes", page.getHiddenValue());
   }

   @AfterEach
   public void tearDown() {
      driver.quit();
   }
}
