require 'test_helper'

class UserAgentsControllerTest < ActionController::TestCase
  setup do
    @user_agent = user_agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_agent" do
    assert_difference('UserAgent.count') do
      post :create, :user_agent => @user_agent.attributes
    end

    assert_redirected_to user_agent_path(assigns(:user_agent))
  end

  test "should show user_agent" do
    get :show, :id => @user_agent.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @user_agent.to_param
    assert_response :success
  end

  test "should update user_agent" do
    put :update, :id => @user_agent.to_param, :user_agent => @user_agent.attributes
    assert_redirected_to user_agent_path(assigns(:user_agent))
  end

  test "should destroy user_agent" do
    assert_difference('UserAgent.count', -1) do
      delete :destroy, :id => @user_agent.to_param
    end

    assert_redirected_to user_agents_path
  end
end
