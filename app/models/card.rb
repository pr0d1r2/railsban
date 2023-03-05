# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :status

  delegate :name, to: :status, prefix: true
end
