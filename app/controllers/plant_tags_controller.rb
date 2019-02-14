class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find params[:plant_id]
    @plant_tag = PlantTag.new
  end

  def create
    @plant_tag = PlantTag.new plant_tag_params
    @plant = Plant.find params[:plant_id]
    @plant_tag.plant = @plant

    if @plant_tag.save
      redirect_to garden_path(@plant.garden)
    else
      render :new
    end
    # @plant_tag.tag = Tag.find params[:plant_tag][:tag_id]
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end
