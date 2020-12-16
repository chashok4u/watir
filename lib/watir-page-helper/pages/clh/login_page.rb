require 'watir-page-helper'
require 'rspec/expectations'
require 'yaml'


module WatirPageHelper::Clh
  module LoginPage
    extend WatirPageHelper::ClassMethods

    def setcredentials (userid, password)
      #sleep 6
      config = YAML.load_file('configoptions.yml')
      userid = ENV['userid'] || config['global']['userid'] || userid
      password = ENV['password'] || config['global']['password'] || password
      @browser.text_field(:id, "Email").set userid
      puts "Entered User Name"
      sleep 9
      @browser.button(:type,"submit").click
      sleep 9
      @browser.text_field(:id, "Passwd").set password
      puts"Entered Password"

    end

    def clicklogin
		sleep 6
      @browser.button(:value,"Sign in").click
	  sleep 9
    end


    def is_mycomposelinkexists
      sleep 4
       if ( @browser.span(:text, "Gmail").exists? )
         $rep.addtoReport($testReport, 'Mails List Page exists', 'PASSED', 'Desc1')
       else
         $rep.addtoReport($testReport, 'Mails List page is not available', 'Failed' , 'Desc2')
       end
      $rep.finishReport($testReport)
    end

  end
end