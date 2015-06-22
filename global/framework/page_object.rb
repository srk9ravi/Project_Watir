


module PageObject

  include Element
  include PageFactory
  include Load_Watir
  include Element_Actions

  def self.included(cls)
    cls.extend PageObject::Load_Watir
  end


end
