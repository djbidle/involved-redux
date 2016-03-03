require 'test_helper'

class InvolvedControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "INvolved | Be heard!"
  end

  test "should get search" do
    get :search
    assert_response :success
    assert_select "title", "Search | INvolved"
  end
  
  test "should get trending" do
    get :trending
    assert_response :success
    assert_select "title", "Trending | INvolved"
  end

  test "should get graph" do
    get :graph
    assert_response :success
    assert_select "title", "Graph | INvolved"
  end

=begin

 test "should get signup" do
    get :signup
    assert_response :success
    assert_select "title", "Signup | Be heard!"
  end
  
  test "should get profile" do
    get :profile
    assert_response :success
    assert_select "title", " Profile | INvolved"
  end

=end

end
