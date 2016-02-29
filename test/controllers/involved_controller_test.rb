require 'test_helper'

class InvolvedControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get trending" do
    get :trending
    assert_response :success
  end

  test "should get graph" do
    get :graph
    assert_response :success
  end

end
