require 'test_helper'

class ActivityControllerTest < ActionController::TestCase
  test "should get last" do
    get :last
    assert_response :success
  end

  test "should get all" do
    get :all
    assert_response :success
  end

end
