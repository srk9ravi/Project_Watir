
require 'require_all'

require_all(File.expand_path('../../../global/Utilities/load_file.rb', __FILE__))


Before{
  PageObject::Load_Watir.start_driver
  $driver.goto("https://rubygems.org/")

}

After{
  sleep(3)
  PageObject::Load_Watir.quit_driver
}







