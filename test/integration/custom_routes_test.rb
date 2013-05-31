require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "that /sign_in route opens login page" do
  	get '/sign_in'
  	assert_response :success
  end

  test "that /sign_out route opens sign_out page" do
  	get '/sign_out'
  	assert_response :redirect
  	assert_redirected_to "/"
  end

  test "that /register route opens Register page" do
  	get '/register'
  	assert_response :success
  end

  test "that a profile page works" do
    get '/bzenk'
    assert_response :success
  end
end
