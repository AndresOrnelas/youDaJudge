require 'test_helper'

class MainPagesControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get score" do
    get :score
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
