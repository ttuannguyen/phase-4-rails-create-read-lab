class PlantsController < ApplicationController

    # GET /plants
    def index
        plants = Plant.all 
        render json: plants
    end

    # GET /plants/:id
    def show 
        plant = Plant.find(params[:id])
        render json: plant
    end

    def create 
        plant = Plant.create(plant_params)
        render json: plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
