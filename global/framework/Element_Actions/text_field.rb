

module PageObject
  module Element_Actions

        def text_field(element,property)

          define_method("#{element}_set=") do |text_value|
            PageObject::WebElements::Element.new(property).set=text_value
          end

        end
  end
end