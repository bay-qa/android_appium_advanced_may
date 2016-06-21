class CustomConversionsScreen < ScreenActions

  def create_first_conversion
    find_element(id: "btn_new_custom_conversion")
  end

  def conversion_name_field
    find_element(id: "edit_custom_conversion_category_name")
  end

  def new_unit_button
    find_element(id: "btn_new_custom_unit")
  end

  def new_unit_name
    find_element(id: "edit_custom_conversion_unit_dtls_name")
  end

  def new_unit_symbol
    find_element(id: "edit_custom_conversion_unit_dtls_symbol")
  end

  def new_unit_value
    find_element(id: "edit_custom_conversion_unit_dtls_value")
  end

  def confirm_new_unit
    find_element(id: "action_confirm_custom_unit")
  end

  def ok_button
    find_element(id: "btn_custom_conversion_details_ok")
  end

  def verify_conversion_in_list?(unit_name)
    exists{find_element(id: "custom_conversions_list").find_element(name: unit_name)}
  end


end