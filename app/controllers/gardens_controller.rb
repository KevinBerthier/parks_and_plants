class GardensController < ApplicationController
  def show
    @garden = Garden.find(params[:id])
    @plant = Plant.new
  end
end
