# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @statuses = Status.all
  end
end
