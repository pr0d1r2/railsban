# frozen_string_literal: true

class CardsController < ApplicationController
  before_action :set_card, only: %i[show edit update destroy]

  # GET /cards or /cards.json
  def index
    @cards = Card.all
  end

  # GET /cards/1 or /cards/1.json
  def show; end

  # GET /cards/new
  def new
    @card = Card.new
  end

  # GET /cards/1/edit
  def edit; end

  # POST /cards or /cards.json
  def create
    @card = Card.new(card_params)

    if @card.save
      respond_success(:created)
    else
      respond_error
    end
  end

  # PATCH/PUT /cards/1 or /cards/1.json
  def update
    if @card.update(card_params)
      respond_success(:ok)
    else
      respond_error
    end
  end

  # DELETE /cards/1 or /cards/1.json
  def destroy
    @card.destroy!
    respond_destroy_success
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_card
    @card = Card.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def card_params
    params.require(:card).permit(:name, :description, :status_id)
  end

  def respond_success(status)
    respond_to do |format|
      format.html { redirect_to(card_url(@card), notice: t('.notice')) }
      format.json { render(:show, status:, location: @card) }
    end
  end

  def respond_error
    respond_to do |format|
      format.html { render(:new, status: :unprocessable_entity) }
      format.json { render(json: @card.errors, status: :unprocessable_entity) }
    end
  end

  def respond_destroy_success
    respond_to do |format|
      format.html { redirect_to(cards_url, notice: t('.notice')) }
      format.json { head(:no_content) }
    end
  end
end
