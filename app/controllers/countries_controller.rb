class CountriesController < ApplicationController

  def index
    @country = Country.all
  end
end
