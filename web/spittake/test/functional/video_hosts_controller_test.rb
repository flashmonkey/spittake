require 'test_helper'

class VideoHostsControllerTest < ActionController::TestCase
  setup do
    @video_host = video_hosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:video_hosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create video_host" do
    assert_difference('VideoHost.count') do
      post :create, :video_host => @video_host.attributes
    end

    assert_redirected_to video_host_path(assigns(:video_host))
  end

  test "should show video_host" do
    get :show, :id => @video_host.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @video_host.to_param
    assert_response :success
  end

  test "should update video_host" do
    put :update, :id => @video_host.to_param, :video_host => @video_host.attributes
    assert_redirected_to video_host_path(assigns(:video_host))
  end

  test "should destroy video_host" do
    assert_difference('VideoHost.count', -1) do
      delete :destroy, :id => @video_host.to_param
    end

    assert_redirected_to video_hosts_path
  end
end
