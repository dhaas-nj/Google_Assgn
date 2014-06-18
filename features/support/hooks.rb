require 'watir-webdriver'


Before do
  begin
    @browser = Watir::Browser.new :chrome
 #   @browser.driver.manage.window.maximize
  rescue => e
    puts e
  end
end


After do
  @browser.close
end