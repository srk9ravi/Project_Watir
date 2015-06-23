

module PageObject
  module WebElements
    class Element

      attr_reader :element

      def initialize(element)
        @element=element.split("~")
      end

      def driver
        $driver
      end

      def find_element
        driver.element(:"#{element[0]}", element[1])
      end

      def set=(value)
        find_element.send_keys value
      end

    end

  end
end