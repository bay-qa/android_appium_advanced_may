class CurrentConversionScreen

 def search_button
   find_element(id: "action_search")
 end

 def search_field
   find_element(id: "search_src_text")
 end

 def current_screen_title
   find_element(id: "action_bar").find_element(class: "android.widget.TextView")
 end

 def left_unit_picker
   find_elements(id: "select_unit_spinner")[0]
 end

 def right_unit_picker
   find_elements(id: "select_unit_spinner")[1]
 end

 def type_on_keyboard(key)
   find_element(id: "keypad").find_element(name: key).click
 end

 def source_field
   find_element(id: "source_value")
 end

end