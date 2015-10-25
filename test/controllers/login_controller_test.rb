require 'test_helper'

class LoginControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @base_title = "Writer's App"
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
    assert_select "title", "#{@base_title}"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get register" do
    get :register
    assert_response :success
    assert_select "title", "Register | #{@base_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
end
