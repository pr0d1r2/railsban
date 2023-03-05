# frozen_string_literal: true

require 'application_system_test_case'

class HomeTest < ApplicationSystemTestCase
  test 'visiting the index' do
    visit '/'

    assert_selector 'h1', text: 'Railsban'
    assert_text 'Welcome to our Kanban board on Rails!'
    assert_link 'Create a new Card', href: new_card_url(only_path: true)

    assert_text 'StatusOne'
    assert_link 'CardOne', href: card_url(cards(:one), only_path: true)

    assert_text 'StatusTwo'
    assert_link 'CardTwo', href: card_url(cards(:two), only_path: true)
  end
end
