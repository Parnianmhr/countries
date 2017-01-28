class CitiesController < ApplicationController
    def new
        @city = City.new
    end

    def create
        @country = Country.find(params[:country_id])
        @city = City.new(city_params)
          # @song.artist_id = params[:artist_id]

        if @city.save
            redirect_to @country, notice: 'city successfully created'
        else
            render '/countries/show'
        end
    end

    private

    def city_params
        params.require(:city).permit(:name, :photo, :population)
    end
end
