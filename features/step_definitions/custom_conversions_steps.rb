Then(/^I press on My Conversions$/) do
  menu_screen.my_conversions.click
end

Then(/^I press on Create Your First Conversion button$/) do
  custom_conversions_screen.create_first_conversion.click
end

Then(/^I type "(.*?)" as new conversion name$/) do |name|
  custom_conversions_screen.conversion_name_field.send_keys(name)
end

Then(/^I press on New Unit button$/) do
  custom_conversions_screen.new_unit_button.click
end

Then(/^I type "(.*?)" for new unit name$/) do |name|
  custom_conversions_screen.new_unit_name.send_keys(name)
end

Then(/^I type "(.*?)" for new unit symbol name$/) do |name|
  custom_conversions_screen.new_unit_symbol.send_keys(name)
end

Then(/^I type "(.*?)" for new unit value$/) do |value|
  custom_conversions_screen.new_unit_value.send_keys(value)
end

Then(/^I press on Confirm new unit$/) do
  custom_conversions_screen.confirm_new_unit.click
end

When(/^I press on OK button on new unit creation screen$/) do
  custom_conversions_screen.ok_button.click
end

Then(/^I verify "(.*?)" conversion on My conversions screen$/) do |name|
  result = custom_conversions_screen.verify_conversion_in_list?(name)
  expect(result).to be true
end