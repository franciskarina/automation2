require 'selenium-webdriver'
require 'rubygems'
require 'rspec/expectations'

driver=Selenium::WebDriver.for:chrome

Given(/^user open automationpractice.com$/) do
driver.navigate.to "http://automationpractice.com/"
sleep(1)
end

Then (/^input text at search bar and tap search$/) do
driver.find_element(:name, "search_query").send_keys('dress')
sleep(1)
driver.find_element(:name,"submit_search").click
end
sleep(10)

Then(/^check contact us functionality$/) do
  driver.find_element(:link, "Contact us").click
  sleep(1)
end

Then (/^check filter functionality$/) do
  driver.find_element(:link, "Women").click
  sleep(1)
  driver.find_element(:id, "uniform-layered_category_4").click
  sleep(1)
  driver.find_element(:id,"uniform-layered_category_4").selected?
  sleep(1)
  driver.find_element(:id, "layered_id_attribute_group_1").click
  sleep(1)
  driver.find_element(:id,"layered_id_attribute_group_1").selected?
  sleep(10)

end
