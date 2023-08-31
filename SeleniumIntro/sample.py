from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.expected_conditions import presence_of_all_elements_located
import time

# Sample requires webdriver 3.13 >

with webdriver.Chrome() as driver:
    wait = WebDriverWait(driver, 10)
    driver.get(
        "https://magento.softwaretestingboard.com/men/tops-men/jackets-men.html")
    time.sleep(6)

    title = driver.title
    assert title == "Jackets - Tops - Men"
    driver.implicitly_wait(5)
    message = driver.find_element(By.CLASS_NAME, 'product-image-photo')
    time.sleep(5)
    for item in message:
        print(item)
    driver.quit()

    # submit_button = driver.find_element(by=By.CSS_SELECTOR, value="button")
    # text_box.send_keys("Selenium")
    # submit_button.click()

    # message = driver.find_element(
    #     by=By.CLASS_NAME, value=".product-image-photo")
    # value = message.text
    # print(value)
    # # assert value == "Received!"
