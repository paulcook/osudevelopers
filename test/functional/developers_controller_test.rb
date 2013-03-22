require 'test_helper'

class DevelopersControllerTest < ActionController::TestCase
  setup do
    @developer = developers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:developers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create developer" do
    assert_difference('Developer.count') do
      post :create, developer: { bio: @developer.bio, github_username: @developer.github_username, name: @developer.name, team_id: @developer.team_id, twitter_username: @developer.twitter_username, username: @developer.username }
    end

    assert_redirected_to developer_path(assigns(:developer))
  end

  test "should show developer" do
    get :show, id: @developer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @developer
    assert_response :success
  end

  test "should update developer" do
    put :update, id: @developer, developer: { bio: @developer.bio, github_username: @developer.github_username, name: @developer.name, team_id: @developer.team_id, twitter_username: @developer.twitter_username, username: @developer.username }
    assert_redirected_to developer_path(assigns(:developer))
  end

  test "should destroy developer" do
    assert_difference('Developer.count', -1) do
      delete :destroy, id: @developer
    end

    assert_redirected_to developers_path
  end
end
