class HowItWorks

  def home_page (expected_value = "Pay national & regional billers with cash including:")
    actual_value = find_element(:css, "h2.visible-xs-block").text
    if expected_value == actual_value
      puts "Pass"
    else
      puts "Fail"
    end
    expect(actual_value).to eql(expected_value)
  end

  def hiw_link
    find_element(:xpath, "//*[@id='menu-item-1271']/a")
  end

  def hiw_text
    find_element(:xpath, "//*[@id='wrapper']/div[1]/section[2]/div/div[1]/div/div/h2")
  end

  def three_steps
    steps_list = find_element(:xpath, "//*[@id='wrapper']/div[1]/section[2]/div/div[2]").find_elements(:tag_name, "h5")
    steps_list.each do |element|
      puts element.text
    end
  end

end