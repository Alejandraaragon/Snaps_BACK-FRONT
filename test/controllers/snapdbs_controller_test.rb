require "test_helper"

class SnapdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @snapdb = snapdbs(:one)
  end

  test "should get index" do
    get snapdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_snapdb_url
    assert_response :success
  end

  test "should create snapdb" do
    assert_difference("Snapdb.count") do
      post snapdbs_url, params: { snapdb: { color: @snapdb.color, title: @snapdb.title } }
    end

    assert_redirected_to snapdb_url(Snapdb.last)
  end

  test "should show snapdb" do
    get snapdb_url(@snapdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_snapdb_url(@snapdb)
    assert_response :success
  end

  test "should update snapdb" do
    patch snapdb_url(@snapdb), params: { snapdb: { color: @snapdb.color, title: @snapdb.title } }
    assert_redirected_to snapdb_url(@snapdb)
  end

  test "should destroy snapdb" do
    assert_difference("Snapdb.count", -1) do
      delete snapdb_url(@snapdb)
    end

    assert_redirected_to snapdbs_url
  end
end
