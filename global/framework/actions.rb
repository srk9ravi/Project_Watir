

module PageObject
  module Element_Actions

    def edit_field(element,property)

      define_method("#{element}_set") do |text_value|
        puts "yes it has set in the name"
        PageObject::Element.new(property).set(text_value)
      end

    end

  end
end