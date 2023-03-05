# frozen_string_literal: true

class HomeController < ApplicationController
  # GET /statuses or /statuses.json
  def index
    @statuses = Status.all
  end
end
