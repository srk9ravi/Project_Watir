
module PageObject

  module Load_Watir
    def self.start_driver
      $driver = Watir::Browser.new :ff
    end

    def self.quit_driver
      $driver.quit
    end

  end

end