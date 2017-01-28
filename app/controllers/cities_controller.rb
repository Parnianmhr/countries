class CitiesController < ApplicationController
    def new
        @city = City.new
    end

    def create
        @country = Country.find(params[:country_id])
        @city = City.new(city_params)
        @city.country = @country

        if @city.save
            redirect_to @country, notice: 'city successfully created'
        else
            render '/countries/show'
        end
    end

    def destroy
        @city = City.find(params[:id])
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
