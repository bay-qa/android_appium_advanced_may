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