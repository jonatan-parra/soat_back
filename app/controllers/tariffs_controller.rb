class TariffsController < ApplicationController
  before_action :set_tariff, only: [:show, :update, :destroy]

  # GET /tariffs
  def index
    @tariffs = Tariff.all

    render json: @tariffs
  end

  # GET /tariffs/1
  def show
    render json: @tariff
  end

  # POST /tariffs
  def create
    @tariff = Tariff.new(tariff_params)

    if @tariff.save
      render json: @tariff, status: :created, location: @tariff
    else
      render json: @tariff.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tariffs/1
  def update
    if @tariff.update(tariff_params)
      render json: @tariff
    else
      render json: @tariff.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tariffs/1
  def destroy
    @tariff.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tariff
      @tariff = Tariff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tariff_params
      params.require(:tariff).permit(:code, :year, :vehicle_class, :subtype, :age, :commercial_rate, :premium_value, :fosyga_contribution, :subtotal_premium_and_contribution, :runt_rate, :total_to_pay)
    end
end
