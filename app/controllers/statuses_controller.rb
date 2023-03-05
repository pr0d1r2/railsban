# frozen_string_literal: true

class StatusesController < ApplicationController
  before_action :set_status, only: %i[show edit update destroy]

  # GET /statuses or /statuses.json
  def index
    @statuses = Status.all
  end

  # GET /statuses/1 or /statuses/1.json
  def show; end

  # GET /statuses/new
  def new
    @status = Status.new
  end

  # GET /statuses/1/edit
  def edit; end

  # POST /statuses or /statuses.json
  def create
    @status = Status.new(status_params)

    if @status.save
      respond_success(:created)
    else
      respond_error
    end
  end

  # PATCH/PUT /statuses/1 or /statuses/1.json
  def update
    if @status.update(status_params)
      respond_success(:ok)
    else
      respond_error
    end
  end

  # DELETE /statuses/1 or /statuses/1.json
  def destroy
    @status.destroy!
    respond_destroy_success
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_status
    @status = Status.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def status_params
    params.require(:status).permit(:name)
  end

  def respond_success(status)
    respond_to do |format|
      format.html { redirect_to(status_url(@status), notice: t('.notice')) }
      format.json { render(:show, status:, location: @status) }
    end
  end

  def respond_error
    respond_to do |format|
      format.html { render(:new, status: :unprocessable_entity) }
      format.json { render(json: @status.errors, status: :unprocessable_entity) }
    end
  end

  def respond_destroy_success
    respond_to do |format|
      format.html { redirect_to(statuses_url, notice: t('.notice')) }
      format.json { head(:no_content) }
    end
  end
end
