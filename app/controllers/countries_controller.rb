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
        if @country.save
            redirect_to root_path
        else
            @country = Country.all
            render :index
        end
    end

    def destroy
        @country = Country.find(params[:id])
        @country.destroy

        if @country.destroy
            redirect_to root_path, notice: 'country successfully deleted'
        else
            render '/countries/show'
        end
    end

    private

    def country_params
        params.require(:country).permit(:name, :capital, :flag, :language, :area, :population)
    end
end
