# https://github.com/rspec/rspec-expectations

require "appium_lib"
require "rspec/expectations"
require "pry"

def caps
  {caps: { deviceName: "Samsung",
           platformName: "Android",
           app:(File.join(File.dirname(__FILE__), "..", "..", "PreciseUnitConversion.apk")),
           appPackage: "com.ba.universalconverter",
           appActivity: "MainConverterActivity",
           newCommandTimeout: "3600",
           appium_lib: {wait: 20, debug: false}

  }}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods(Object)

def current_conversion_screen
  @current_conversion_screen ||= CurrentConversionScreen.new
end

def menu_screen
  @menu_screen ||= MenuScreen.new
end
