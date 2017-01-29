class CitiesController < ApplicationController
    def index
        @country = Country.find[params(:country_id)]
    end

    def new
        @country = Country.find[params(city_params)]
    end

    def create
        country = Country.find(params[:country_id])
        @city = country.cities.new(params[city_params])

        if @city.save
            redirect_to @country, notice: 'city successfully created'
        else
            render '/countries/show'
        end
    end

    def destroy
        country = Country.find(params[:country_id])
        @city = country.cities.find(params[:id])
        @city.destroy

        if @city.destroy
            redirect_to country_path(@city.country), notice: 'city successfully deleted'
        else
            render '/countries/show'
        end
    end

    private

    def city_params
        params.require(:city).permit(:name, :photo, :population)
    end
end
