# frozen_string_literal: true

require 'application_system_test_case'

class StatusesTest < ApplicationSystemTestCase
  setup do
    @status = statuses(:one)
  end

  test 'visiting the index' do
    visit statuses_url
    assert_selector 'h1', text: 'Statuses'
    assert_text 'StatusOne'
    assert_link 'Show this status', href: target_status_url(@status)
    assert_text 'StatusTwo'
    assert_link 'Show this status', href: target_status_url(statuses(:two))
    assert_link 'New status', href: new_status_url(only_path: true)
  end

  test 'should create status' do
    visit statuses_url
    click_on 'New status'

    fill_in 'Name', with: @status.name
    click_on 'Create Status'

    assert_text 'Status was successfully created.'
    click_on 'Back'
  end

  test 'should update Status' do
    visit status_url(@status)
    click_on 'Edit this status', match: :first

    fill_in 'Name', with: @status.name
    click_on 'Update Status'

    assert_text 'Status was successfully updated.'
    click_on 'Back'
  end

  test 'should destroy Status' do
    visit status_url(@status)
    click_on 'Destroy this status', match: :first

    assert_text 'Status was successfully destroyed.'
  end

  # Only path gets rendered in links.
  def target_status_url(status)
    status_url(status, only_path: true)
  end
end
