from selenium import webdriver
from selenium.webdriver.chrome.options import Options as chromeOptions
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
import sys
import time

page_address = sys.argv[1]

with webdriver.Chrome() as driver:
    wait = WebDriverWait(driver, 10)
    driver.get(page_address)
    time.sleep(5)

    page_title = driver.title
    print(page_title)
    if page_title == "Hello Azure - Python Quickstart":
        print("Title check passed!")
    else:
        print("Title check failed!")

    driver.find_element(By.ID, "name").send_keys("Test user")
    time.sleep(2)
    driver.find_element(By.CLASS_NAME, "btn").click()

    message = driver.find_element(By.CLASS_NAME, "fw-bold")
    messag_text = message.text
    print(messag_text)
    driver.quit()
