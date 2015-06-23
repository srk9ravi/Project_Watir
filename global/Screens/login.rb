


class Home_page

extend OR
include PageObject

  text_field(:search_string, OR::HOME_SEARCH_EDIT_FIELD)

  def enter_search_string(search_string_value)
      self.search_string_set=search_string_value
  end

end
