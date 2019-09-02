class HasCardsController < ApplicationController
  before_action :set_has_card, only: [:show, :update, :destroy]

  # GET /has_cards
  def index
    @has_cards = HasCard.all

    render json: @has_cards
  end

  # GET /has_cards/1
  def show
    render json: @has_card
  end

  # POST /has_cards
  def create
    @has_card = HasCard.new(has_card_params)

    if @has_card.save
      render json: @has_card, status: :created, location: @has_card
    else
      render json: @has_card.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /has_cards/1
  def update
    if @has_card.update(has_card_params)
      render json: @has_card
    else
      render json: @has_card.errors, status: :unprocessable_entity
    end
  end

  # DELETE /has_cards/1
  def destroy
    @has_card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_has_card
      @has_card = HasCard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def has_card_params
      params.require(:has_card).permit(:user_id, :card_id)
    end
end
