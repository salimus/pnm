class PayNearMe

  def how_it_works
    @how_it_works ||= HowItWorks.new
  end

  def payment_locations
    @payment_locations ||= PaymentLocations.new
  end

end