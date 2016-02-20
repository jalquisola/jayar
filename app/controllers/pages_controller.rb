class PagesController < ApplicationController
  def home
    @inquiry = Inquiry.new
    @desc = "Situated in Roxas Boulevard, Coast Residences gives grand views of the Manila Bay Sunset and the Metro Manila Cityscape. Reserve your unit for Php25,000.00."
    @title = "Coast Residences, Roxas Boulevard, Pasay City"

    @unit_types = [
      "1-Bedroom Unit(24.09sqm)",
      "1-Bedroom Unit w/ Balcony(26.55-30.91sqm)",
      "1-Bedroom Unit w/ Den(28.35-28.36sqm)",
      "Family Suite A w/ Balcony(26.12-30.98sqm)",
      "Family Suite B w/ Balcony(26.00-26.38sqm)",
      "2-Bedroom Family Suite B w/ Balcony(29.35-32.12sqm)",
      "2-Bedroom End Unit w/ Balcony(66.96-68.55sqm)",
    ]
    render :home, layout: false
  end

  def thanks
    @inquiry = Inquiry.new
    @unit_types = [
      "1-Bedroom Unit(24.09sqm)",
      "1-Bedroom Unit w/ Balcony(26.55-30.91sqm)",
      "1-Bedroom Unit w/ Den(28.35-28.36sqm)",
      "Family Suite A w/ Balcony(26.12-30.98sqm)",
      "Family Suite B w/ Balcony(26.00-26.38sqm)",
      "2-Bedroom Family Suite B w/ Balcony(29.35-32.12sqm)",
      "2-Bedroom End Unit w/ Balcony(66.96-68.55sqm)",
    ]
    render :thanks, layout: false
  end
end
