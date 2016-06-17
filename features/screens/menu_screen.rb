class MenuScreen

  def my_conversions
    find_element(name: "My conversions")
  end


  def select_from_menu(unit_name)
    #scroll all way up before locating any elements
    3.times{Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.20, end_x: 0.5, end_y: 0.70, duration: 600).perform}

    #Appium will get source of current screen and save it in local variable 'current_screen'
    current_screen = get_source

    #define empty variable 'previous_screen'
    previous_screen = ""

    #until loop will work ONLY if 2 conditions is equal to false:
      #1st element is not exists:
        #(exists{find_element(name: unit_name)}) => should return false
      #2nd current screen is not equal previous screen
        #(current_screen == previous_screen) => should return false
    # if ANY condition is equal to true => Until loop will stop
    until(exists{find_element(name: unit_name)})||(current_screen == previous_screen)do
      #scroll screen down 1 time
      Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.70, end_x: 0.5, end_y: 0.20, duration: 800).perform

      #assign value of current_screen to previous_screen
      previous_screen == current_screen

      #get new screen source and reassign variable current_screen
      current_screen = get_source

      #Go Back to line 27 and check repeat process
    end

    result = exists{find_element(name: unit_name)}
    fail("Element with name #{unit_name} not found") if result == false

    find_element(name: unit_name).click
  end


end