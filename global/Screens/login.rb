


class Login_page

extend OR
include PageObject
include Element_Actions

  edit_field(:search_string, OR::HOME_SEARCH_EDIT_FIELD)

  def set_search_string(search_string_value)
    search_string_set(search_string_value)
  end


end
