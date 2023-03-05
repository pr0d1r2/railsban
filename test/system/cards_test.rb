# frozen_string_literal: true

require 'application_system_test_case'

class CardsTest < ApplicationSystemTestCase
  setup do
    @card = cards(:one)
  end

  test 'visiting the index' do
    visit cards_url
    assert_selector 'h1', text: 'Cards'
    assert_text 'CardOne'
    assert_link 'Show this card', href: card_url(@card, only_path: true)
    assert_text 'CardTwo'
    assert_link 'Show this card', href: card_url(cards(:two), only_path: true)
    assert_link 'New card', href: new_card_url(only_path: true)
  end

  test 'should create card' do
    visit cards_url
    click_on 'New card'

    fill_in 'Description', with: @card.description
    fill_in 'Name', with: @card.name
    click_on 'Create Card'

    assert_text 'Card was successfully created.'
    click_on 'Back'
    assert_selector 'h1', text: 'Railsban'
  end

  test 'should update Card' do
    visit card_url(@card)
    click_on 'Edit this card', match: :first

    fill_in 'Description', with: @card.description
    fill_in 'Name', with: @card.name
    click_on 'Update Card'

    assert_text 'Card was successfully updated.'
    click_on 'Back'
    assert_selector 'h1', text: 'Railsban'
  end

  test 'should destroy Card' do
    visit card_url(@card)
    click_on 'Destroy this card', match: :first

    assert_text 'Card was successfully destroyed.'
  end
end
