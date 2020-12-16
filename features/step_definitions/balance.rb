Given /^user is navigates using (.*) with (.*)$/ do |_, site|
  @site = site.downcase
  visit @site, :home_page
  on @site, :home_page do |page|
    page.golink
  end
end

When(/^user logged into(.*) (.*) with(.*)with (.*)$/) do |_, _, userid, password|
  on @site, :login_page do |page|
    page.setcredentials userid, password
    page.clicklogin
  end
end

Then(/^the user is able to login(.*)$/) do |_|
  on @site, :login_page do |page|
    page.is_mycomposelinkexists
  end
end

When /^user wants to enter data into (.*) with (.*) and (.*) and (.*) and (.*) and (.*)$/ do |_, value1, value2, value3, value4, value5|
  on @site, :pg_balance do |page|
    sleep 5
    page.enter_first_value value1
    page.enter_second_value value2
    page.enter_third_value value3
    page.enter_fourth_value value4
    page.enter_fifth_value value5

  end
end

When /^user wants to verify total balance (.*) with (.*) and (.*) and (.*) and (.*) and (.*)$/ do |_, value1, value2, value3, value4, value5|
  on @site, :blance_page do |page|
      sleep 5
      page.verify_total_balance value1, value2, value3, value4, value5


  end
end


Then /^user able to validates total balance(.*) with (.*) and (.*) and (.*) and (.*) and (.*)$/ do |_, value1, value2, value3, value4, value5|
  on @site, :blance_page do |page|
    page.is_balance_exists    value1, value2, value3, value4, value5
    #page.logout

  end
end