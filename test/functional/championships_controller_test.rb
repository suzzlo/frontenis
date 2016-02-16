require 'test_helper'

class ChampionshipsControllerTest < ActionController::TestCase
  setup do
    @championship = championships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:championships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create championship" do
    assert_difference('Championship.count') do
      post :create, championship: @championship.attributes
    end

    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should show championship" do
    get :show, id: @championship.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @championship.to_param
    assert_response :success
  end

  test "should update championship" do
    put :update, id: @championship.to_param, championship: @championship.attributes
    assert_redirected_to championship_path(assigns(:championship))
  end

  test "should destroy championship" do
    assert_difference('Championship.count', -1) do
      delete :destroy, id: @championship.to_param
    end

    assert_redirected_to championships_path
  end
end
