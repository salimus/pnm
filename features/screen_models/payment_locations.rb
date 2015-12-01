class PaymentLocations

  def humburger
    find_element(:xpath, "//*[@id='wrapper']/section/div/div/div/ul/li[2]/a")
  end

  def payment_loc_link
    find_element(:xpath, "//*[@id='menu-item-1285']/a")
  end

  def address_text_field
    find_element(:id, "address")
  end

  def search_button
    find_element(:id, "search_loc")
  end

  def search_results
    result = find_element(:id, "results").find_elements(:xpath, "//div[@class = 'row search_results']")
    puts result.count
  end

end