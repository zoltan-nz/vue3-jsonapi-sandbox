# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test 'should get an OK response' do
    get root_url
    assert_response :ok
    assert_equal 'OK', response.body
  end
end
