
require 'watir-webdriver'

module PageObject

  include PageFactory
  include Load_Watir
  include Element_Actions

  def self.included(cls)
    cls.extend PageObject::Element_Actions
  end

  def driver
    PageObject::Element_Actions
  end

end
