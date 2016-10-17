class PagesController < ApplicationController
  before_action :set_unit_types, only: [:home, :how_to_reserve, :contact_us]
  def home
    @inquiry = Inquiry.new
    @desc = "SMDC Coast Residences is situated in Roxas Boulevard, Pasay City. 3.6km away from SM Mall of Asia. Pre-selling Condos. 0% Interest. Php20,000 Reservation Fee."
    @title = "Coast Residences, Roxas Boulevard, Pasay City"

    render :home, layout: false
  end

  def how_to_reserve
    @inquiry = Inquiry.new
    render :how_to_reserve, layout: false
  end

  def contact_us
    @inquiry = Inquiry.new
    render :contact_us, layout: false
  end

  private
  def set_unit_types
    @unit_types = [
      "1-Bedroom Unit(24.09sqm)",
      "1-Bedroom Unit w/ Balcony(26.55-30.91sqm)",
      "1-Bedroom Unit w/ Den(28.35-28.36sqm)",
      "Family Suite A w/ Balcony(26.12-30.98sqm)",
      "Family Suite B w/ Balcony(26.00-26.38sqm)",
      "2-Bedroom Family Suite B w/ Balcony(29.35-32.12sqm)",
      "2-Bedroom End Unit w/ Balcony(66.96-68.55sqm)",
    ]
  end
end
