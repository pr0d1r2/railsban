# frozen_string_literal: true

require 'test_helper'

require_relative '../../../app/channels/application_cable/connection'

module ApplicationCable
  class ConnectionTest < ActionCable::Connection::TestCase
    # test "connects with cookies" do
    #   cookies.signed[:user_id] = 42
    #
    #   connect
    #
    #   assert_equal connection.user_id, "42"
    # end
  end
end
