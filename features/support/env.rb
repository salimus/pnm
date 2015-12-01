require 'cucumber'
require 'appium_lib'
require 'rspec'
require 'pry'
require 'selenium-webdriver'

require_relative 'pnm'
require_relative '../../features/screen_models/how_it_works'
require_relative '../../features/screen_models/payment_locations'

desired_caps = {
    caps: {
        device: 'iPhone Simulator',
        platformName: 'iOS',
        platformVersion: '8.4',
        deviceName: 'iPhone 6',
        browserName: 'Safari',
        autoAcceptAlerts: true,
        locationServicesEnabled: true,
        locationServicesAuthorized: true,
        safariInitialUrl: 'http://paynearme.com'
    }
}


@appium_driver = Appium::Driver.new(desired_caps)

$selenium_driver = @appium_driver.start_driver

Appium.promote_appium_methods PayNearMe
Appium.promote_appium_methods HowItWorks
Appium.promote_appium_methods PaymentLocations

World do
  PayNearMe.new
end

