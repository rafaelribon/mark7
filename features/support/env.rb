require 'capybara'
require 'capybara/cucumber'
require 'site_prism'

@env = ENV['BROWSER']

Capybara.configure do |config|

# if @env.eql?('firefox')
#     config.default_driver = :selenium
# elsif @env.eql?('chrome')
#     config.default_driver = :selenium_chrome
# elsif @nev.eql?('headless')
#     config.default_driver = :selenium_chrome_headless
# end

    #testar no firefox 
    #config.default_driver = :selenium
    #testar no chrome 
    #config.default_driver = :selenium_chrome
    config.default_driver = :selenium_chrome_headless
    config.app_host = 'https://mark7.herokuapp.com'
end 

Capybara.default_max_wait_time = 10
