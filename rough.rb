

require 'watir-webdriver'

dr = Watir::Browser.new :ff

dr.goto("http:/www.rubygems.org")

dr.element(:xpath, "//*[@id='home_query']").send_keys("watir")