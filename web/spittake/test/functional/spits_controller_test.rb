require 'test_helper'

class SpitsControllerTest < ActionController::TestCase
  setup do
    @spit = spits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spit" do
    assert_difference('Spit.count') do
      post :create, :spit => @spit.attributes
    end

    assert_redirected_to spit_path(assigns(:spit))
  end

  test "should show spit" do
    get :show, :id => @spit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spit.to_param
    assert_response :success
  end

  test "should update spit" do
    put :update, :id => @spit.to_param, :spit => @spit.attributes
    assert_redirected_to spit_path(assigns(:spit))
  end

  test "should destroy spit" do
    assert_difference('Spit.count', -1) do
      delete :destroy, :id => @spit.to_param
    end

    assert_redirected_to spits_path
  end
end
