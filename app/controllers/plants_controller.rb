# frozen_string_literal: true

class PlantsController < ApplicationController
  before_action :get_garden
  before_action :set_plant, only: %i[show edit update destroy]

  # GET /plants
  # GET /plants.json
  def index
    @plants = @garden.plants
  end

  # GET /plants/1
  # GET /plants/1.json
  def show; end

  # GET /plants/new
  def new
    @plant = @garden.plants.build
  end

  # GET /plants/1/edit
  def edit; end

  # POST /plants
  # POST /plants.json
  def create
    @plant = @garden.plants.build(plant_params)

    respond_to do |format|
      if @plant.save
        format.html { redirect_to garden_plants_path(@garden), notice: 'Plant was successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plants/1
  # PATCH/PUT /plants/1.json
  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to garden_plants_path(@garden), notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plants/1
  # DELETE /plants/1.json
  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to garden_plants_path(@garden), notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_plant
    @plant = @garden.plants.find(params[:id])
  end

  # Call the instance of Garden to enable nested resources.
  def get_garden
    @garden = Garden.find(params[:garden_id])
  end

  # Only allow a list of trusted parameters through.
  def plant_params
    params.require(:plant).permit(:name, :frequency, :amount, :unit_of_measure, :location, :garden_id)
  end
end
