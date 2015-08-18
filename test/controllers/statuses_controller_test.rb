require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get public" do
    get :public
    assert_response :success
  end

end
