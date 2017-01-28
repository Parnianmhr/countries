class CountriesController < ApplicationController
    def index
        @countries = Country.all
        @country = Country.new
    end

    def show
        @country = Country.find(params[:id])
    end

    def create
        @country = Country.new(country_params)
    end

    private

    def country_params
        params.require(:contry).permit(:name, :flag, :capital, :language, :area, :population)
    end
end
