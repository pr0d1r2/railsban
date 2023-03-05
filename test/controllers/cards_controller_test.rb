# frozen_string_literal: true

require 'test_helper'

require_relative '../../app/controllers/cards_controller'

class CardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @card = cards(:one)
  end

  test 'should get index' do
    get cards_url
    assert_response :success
  end

  test 'should get new' do
    get new_card_url
    assert_response :success
  end

  test 'should create card' do
    status = statuses(:one)
    assert_difference('Card.count') do
      post cards_url, params: { card: { description: 'New description', name: 'New name', status_id: status.id } }
    end

    card = Card.last
    assert_redirected_to card_url(card)
    assert card.description, 'New description'
    assert card.name, name
  end

  test 'should return error with empty name on create' do
    status = statuses(:one)
    post cards_url, params: { card: { description: 'New description', name: '', status_id: status.id } }
    assert_response :unprocessable_entity
  end

  test 'should show card' do
    get card_url(@card)
    assert_response :success
  end

  test 'should get edit' do
    get edit_card_url(@card)
    assert_response :success
  end

  test 'should update card' do
    patch card_url(@card), params: { card: { description: 'New description', name: 'New name' } }
    assert_redirected_to card_url(@card)
    @card.reload
    assert @card.description, 'New description'
    assert @card.name, name
  end

  test 'should return error with empty name on update' do
    patch card_url(@card), params: { card: { description: 'New description', name: '' } }
    assert_response :unprocessable_entity
  end

  test 'should destroy card' do
    assert_difference('Card.count', -1) do
      delete card_url(@card)
    end

    assert_redirected_to cards_url
  end
end
