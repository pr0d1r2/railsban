# frozen_string_literal: true

require 'test_helper'

require_relative '../../app/models/card'

class CardTest < ActiveSupport::TestCase
  test 'delegates status name' do
    assert cards(:one).status_name, statuses(:one).name
  end

  context 'validations' do
    should validate_presence_of(:name)
  end
end
