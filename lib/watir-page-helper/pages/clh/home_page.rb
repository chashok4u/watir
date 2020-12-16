require 'watir-page-helper'
require 'rspec/expectations'
require 'yaml'
require File.dirname(__FILE__) + '/logger'


module WatirPageHelper::Clh
  module HomePage
    extend WatirPageHelper::ClassMethods

    #calling main url
    config = YAML.load_file('configoptions.yml')
    #if URL is passed from command line use it, else the default one
    url = ENV['URL'] || config['global']['url']
    direct_url(url)

    #if UserName and Password is passed from command line use it
    userid = ENV['userid'] || config['global']['userid']
    password = ENV['password'] || config['global']['password']

    # create log file
    def counterin
      $cntr = 1
    end

    def golink
      @browser.driver.manage.window.maximize
      @browser.link(:xpath, "html/body/nav/div/a[2]").click
      sleep 15
      if $reportexists == nil
        $rep = CLReport.new()
        $testReport = $rep.createReport(Dir.pwd + '\\Report\\WatirResults')
        $reportexists = true
      end

    end

  end
end
