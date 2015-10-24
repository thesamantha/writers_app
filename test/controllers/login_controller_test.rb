require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select "title", "Welcome | Writer's App"
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get help" do
    get :register
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end
end
