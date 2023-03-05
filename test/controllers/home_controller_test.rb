# frozen_string_literal: true

require 'test_helper'

require_relative '../../app/controllers/home_controller'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get home_index_url
    assert_response :success
  end
end
