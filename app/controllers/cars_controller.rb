class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  def index
    @cars = Car.all
  end

  # GET /cars/1
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to @car, notice: '作成しました！'
    else
      render :new
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      redirect_to @car, notice: '更新しました！'
    else
      render :edit
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
    redirect_to cars_url, notice: '削除しました！'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:name, :money, :image, :color, :grade)
    end
end
