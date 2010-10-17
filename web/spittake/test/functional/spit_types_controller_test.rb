require 'test_helper'

class SpitTypesControllerTest < ActionController::TestCase
  setup do
    @spit_type = spit_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spit_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spit_type" do
    assert_difference('SpitType.count') do
      post :create, :spit_type => @spit_type.attributes
    end

    assert_redirected_to spit_type_path(assigns(:spit_type))
  end

  test "should show spit_type" do
    get :show, :id => @spit_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @spit_type.to_param
    assert_response :success
  end

  test "should update spit_type" do
    put :update, :id => @spit_type.to_param, :spit_type => @spit_type.attributes
    assert_redirected_to spit_type_path(assigns(:spit_type))
  end

  test "should destroy spit_type" do
    assert_difference('SpitType.count', -1) do
      delete :destroy, :id => @spit_type.to_param
    end

    assert_redirected_to spit_types_path
  end
end
