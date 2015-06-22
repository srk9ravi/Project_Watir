module PageObject

  module Element

    attr_reader :element

    def initialize(element)
      @element = element.split("=")
    end

    def element
      puts @elment
      $driver.find_element(:@element[0],@element[1])
    end

  end
end