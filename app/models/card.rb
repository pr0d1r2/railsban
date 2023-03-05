# frozen_string_literal: true

class Card < ApplicationRecord
  belongs_to :status

  validates :name, presence: true

  delegate :name, to: :status, prefix: true
end
