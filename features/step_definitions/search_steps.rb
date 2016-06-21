Given(/^I land on Default conversion screen$/) do
  current_conversion_screen.verify_screen
end

Then(/^I press on Search Icon in header$/) do
  current_conversion_screen.search_button.click
end

Then(/^I type "(.*?)" into search field$/) do |search_term|
  current_conversion_screen.search_field.send_keys(search_term)
end

Then(/^I press Search icon on soft keyboard$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end

Then(/^I verify "(.*?)" as current conversion$/) do |conversion_name|
  # expect("Hello World!").to eq("Hello World!")
  actual_conversion_name = current_conversion_screen.current_screen_title.text
  expect(actual_conversion_name).to eq(conversion_name)
end

Then(/^I verify Left unit picker value is "(.*?)"$/) do |name|
  expect(current_conversion_screen.left_unit_picker.text).to eq(name)
end

Then(/^I verify Right unit picker value is "(.*?)"$/) do |name|
  expect(current_conversion_screen.right_unit_picker.text).to eq(name)
end