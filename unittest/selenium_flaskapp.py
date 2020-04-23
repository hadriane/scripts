from selenium import webdriver
from selenium.webdriver.common.by import By


driver = webdriver.PhantomJS()

for x in range(6):
	driver.get("http://3.234.207.87:5000/")
	driver.set_window_size(550, 696)
	driver.find_element(By.NAME, "name").click()
	driver.find_element(By.NAME, "name").send_keys("selenium_" + str(x))
	driver.find_element(By.CSS_SELECTOR, "form").click()
	driver.find_element(By.NAME, "email").click()
	driver.find_element(By.NAME, "email").send_keys("selenium_" + str(x) + "@test.com")
	driver.find_element(By.CSS_SELECTOR, "input:nth-child(5)").click()

driver.close()
  
