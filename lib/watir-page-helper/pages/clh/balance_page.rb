require 'watir-page-helper'
require 'rspec/expectations'

module WatirPageHelper::Clh
  module BalancePage
    extend WatirPageHelper::ClassMethods

    def enter_first_value (value1)
      #enter values
      val_1 = @browser.text_field(:id => "value1")
      if val_1.exists?
        val_1.clear
        while value1 > 0
          val_1.when_present.value =  value1
          #val_1.set value1
        end
        if val_1.value.include? value1
          $rep.addtoReport($testReport, 'Entered Value', 'Passed', $value1 + 'Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not Entered')
        end
       else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not loaded')
      return value1
      end
    end

    def enter_second_value (value2)
      val_2 = @browser.text_field(:id => "value2")
      if val_2.exists?
        val_2.clear
        while value2 > 0
          val_2.when_present.value =  value2
          # val_2.set value1
        end
        if val_2.value.include? value2
          $rep.addtoReport($testReport, 'Entered Value', 'Passed', $value2 + 'Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not Entered')
        end
      else
        $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not loaded')
      return value2
      end
    end


    def enter_third_value (value3)
      val_3 = @browser.text_field(:id => "value3")
      if val_3.exists?
        val_3.clear
        while val_3 > 0
          val_3.when_present.value =  value3
          # val_3.set value1
        end

        if val_3.value.include? value3
          $rep.addtoReport($testReport, 'Entered Value', 'Passed', $value3 + 'Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not Entered')
        end
      else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not loaded')
      return value3
      end
    end

    def enter_fourth_value (value4)
      val_4 = @browser.text_field(:id => "value4")
      if val_4.exists?
        val_4.clear
        while val_4 > 0
          val_4.when_present.value =  value4
          # val_4.set value1
        end
        if val_4.value.include? value4
          $rep.addtoReport($testReport, 'Entered Value', 'Passed', $value4 + 'Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not Entered')
        end
       else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not loaded')
      return value4
       end
    end

    def enter_fifth_value (value5)
      val_5 = @browser.text_field(:id => "value5")
      if val_5.exists?
        val_5.clear
        while val_5 > 0
          val_5.when_present.value =  value5
          # val_4.set value1
        end
        if val_5.value.include? value5
          $rep.addtoReport($testReport, 'Entered Value', 'Passed', $value5 + 'Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not Entered')
        end
      else
        $rep.addtoReport($testReport, 'Entered Value', 'Failed' , 'Value Field did not loaded')
      return value5
      end
    end

  def verify_total_balance(value1, value2, value3, value4, value5)
    bal = @browser.text_field(:id => "total_balance")
    if bal.exists?
      v1 = enter_first_value(value1)
      v2 = enter_second_value(value2)
      v3 = enter_third_value(value3)
      v4 = enter_fourth_value(value4)
      v5 = enter_fifth_value(value5)
      total_bal = v1+v2+v3+v4+v5
      if bal.value.include? total_bal
        $rep.addtoReport($testReport, 'Total Value', 'Passed', $total_bal + 'Total Value Entered successfully')
      else
        $rep.addtoReport($testReport, 'Total Value', 'Failed' , 'Total Value Field did not Entered')
      end
    else
      $rep.addtoReport($testReport, 'Total Value', 'Failed' , 'Total Value Field did not loaded')
    return total_bal
    end
  end

    def is_balance_exists(value1, value2, value3, value4, value5)
      bal = @browser.text_field(:id => "total_balance")
      total_bal = verify_total_balance(value1, value2, value3, value4, value5)
      if bal.exists?
        if bal.value.include? total_bal
          $rep.addtoReport($testReport, 'Total Value', 'Passed', $total_bal + 'Total Value Entered successfully')
        else
          $rep.addtoReport($testReport, 'Total Value', 'Failed' , 'Total Value Field did not Entered')
        end
      else
        $rep.addtoReport($testReport, 'Total Value', 'Failed' , 'Total Value Field did not loaded')

      end
    end


  end
end




