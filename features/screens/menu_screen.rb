class MenuScreen

  def select_from_menu(unit_name)
    until(exists{find_element(name: unit_name)}) do
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.70, end_x: 0.5, end_y: 0.20, duration: 800).perform
    end
    find_element(name: unit_name).click
  end


end