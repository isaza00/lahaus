require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "Attempt accessing without logging in should fail" do
    get "/api/v1/users/1"
    assert_response :unauthorized
    assert_equal '{"message":"Please log in"}', @response.body
  end

  test "Failed sing up due to invalid email" do
    post "/api/v1/signup", params: { email: "invalid", password: "1234" }
  end

  test "Failed log in due to invalid email" do
    post "/api/v1/login", params: { email: "invalid", password: "1234" }
    assert_response :unauthorized
    assert_equal '{"errors":"Invalid username or password"}', @response.body
  end

  test "Failed log in due to empty parameters" do
    post "/api/v1/login"
    assert_response :unauthorized
    assert_equal '{"errors":"Invalid username or password"}', @response.body
  end
end
