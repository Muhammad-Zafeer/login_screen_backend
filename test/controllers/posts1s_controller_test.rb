require "test_helper"

class Posts1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @posts1 = posts1s(:one)
  end

  test "should get index" do
    get posts1s_url
    assert_response :success
  end

  test "should get new" do
    get new_posts1_url
    assert_response :success
  end

  test "should create posts1" do
    assert_difference('Posts1.count') do
      post posts1s_url, params: { posts1: { body: @posts1.body, user_id: @posts1.user_id } }
    end

    assert_redirected_to posts1_url(Posts1.last)
  end

  test "should show posts1" do
    get posts1_url(@posts1)
    assert_response :success
  end

  test "should get edit" do
    get edit_posts1_url(@posts1)
    assert_response :success
  end

  test "should update posts1" do
    patch posts1_url(@posts1), params: { posts1: { body: @posts1.body, user_id: @posts1.user_id } }
    assert_redirected_to posts1_url(@posts1)
  end

  test "should destroy posts1" do
    assert_difference('Posts1.count', -1) do
      delete posts1_url(@posts1)
    end

    assert_redirected_to posts1s_url
  end
end
