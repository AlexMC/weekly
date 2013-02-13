require 'test_helper'

class WebSeedsControllerTest < ActionController::TestCase
  setup do
    @web_seed = web_seeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:web_seeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create web_seed" do
    assert_difference('WebSeed.count') do
      post :create, web_seed: @web_seed.attributes
    end

    assert_redirected_to web_seed_path(assigns(:web_seed))
  end

  test "should show web_seed" do
    get :show, id: @web_seed.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @web_seed.to_param
    assert_response :success
  end

  test "should update web_seed" do
    put :update, id: @web_seed.to_param, web_seed: @web_seed.attributes
    assert_redirected_to web_seed_path(assigns(:web_seed))
  end

  test "should destroy web_seed" do
    assert_difference('WebSeed.count', -1) do
      delete :destroy, id: @web_seed.to_param
    end

    assert_redirected_to web_seeds_path
  end
end
