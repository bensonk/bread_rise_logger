require 'test_helper'

class RisesControllerTest < ActionController::TestCase
  setup do
    @rise = rises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rise" do
    assert_difference('Rise.count') do
      post :create, rise: @rise.attributes
    end

    assert_redirected_to rise_path(assigns(:rise))
  end

  test "should show rise" do
    get :show, id: @rise.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rise.to_param
    assert_response :success
  end

  test "should update rise" do
    put :update, id: @rise.to_param, rise: @rise.attributes
    assert_redirected_to rise_path(assigns(:rise))
  end

  test "should destroy rise" do
    assert_difference('Rise.count', -1) do
      delete :destroy, id: @rise.to_param
    end

    assert_redirected_to rises_path
  end
end
