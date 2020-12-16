TEST_DATA_DIR = "./features/support/test_data"
$: << File.dirname(__FILE__)+'/../../lib'

require 'watir'
require 'watir-page-helper/commands'


World WatirPageHelper::Commands

WatirPageHelper.create

After do
  #if $reader_cookie == 1
  #else
  WatirPageHelper.browser.cookies.clear
    #end
end

After do |scenario|
  #WatirPageHelper.browser.cookies.clear
end

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start

  at_exit do
    headless.destroy
  end
else
  at_exit do
    WatirPageHelper.close
  end
end



