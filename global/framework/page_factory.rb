
require 'page_navigation'

module PageObject

  module PageFactory
  include PageNavigation
    def on(screen_class, &blk)
      @current_screen = screen_class.new
      blk.call screen if blk
      @current_screen
    end
  end

end

