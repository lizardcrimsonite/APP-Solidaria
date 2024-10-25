require "test_helper"

class HelpsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get helps_index_url
    assert_response :success
  end

  test "should get show" do
    get helps_show_url
    assert_response :success
  end

  test "should get new" do
    get helps_new_url
    assert_response :success
  end

  test "should get create" do
    get helps_create_url
    assert_response :success
  end

  test "should get edit" do
    get helps_edit_url
    assert_response :success
  end

  test "should get update" do
    get helps_update_url
    assert_response :success
  end
end
