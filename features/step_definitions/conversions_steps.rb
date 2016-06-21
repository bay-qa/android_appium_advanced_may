When(/^I type "(.*?)" on app keyboard$/) do |key|
  current_conversion_screen.type_on_keyboard(key)
end

Then(/^I verify that source value is "(.*?)"$/) do |value|
  actual_value = current_conversion_screen.source_field.text
  expect(actual_value).to eq(value)
end

Then(/^I verify that target value is "(.*?)"$/) do |value|
  actual_value = find_element(id: "target_value").text
  expect(actual_value).to eq(value)
end

Then(/^I press on menu icon$/) do
  current_conversion_screen.menu_icon.click
end

And(/^I select "([^"]*)" from menu$/) do |unit_name|
  menu_screen.select_from_list(unit_name)
end

Then(/^I select "(.*?)" from left unit picker$/) do |value|
  current_conversion_screen.left_unit_picker.click
  current_conversion_screen.select_from_list(value)
end

Then(/^I select "(.*?)" from right unit picker$/) do |value|
  current_conversion_screen.right_unit_picker.click
  current_conversion_screen.select_from_list(value)
end