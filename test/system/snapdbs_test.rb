require "application_system_test_case"

class SnapdbsTest < ApplicationSystemTestCase
  setup do
    @snapdb = snapdbs(:one)
  end

  test "visiting the index" do
    visit snapdbs_url
    assert_selector "h1", text: "Snapdbs"
  end

  test "should create snapdb" do
    visit snapdbs_url
    click_on "New snapdb"

    fill_in "Color", with: @snapdb.color
    fill_in "Title", with: @snapdb.title
    click_on "Create Snapdb"

    assert_text "Snapdb was successfully created"
    click_on "Back"
  end

  test "should update Snapdb" do
    visit snapdb_url(@snapdb)
    click_on "Edit this snapdb", match: :first

    fill_in "Color", with: @snapdb.color
    fill_in "Title", with: @snapdb.title
    click_on "Update Snapdb"

    assert_text "Snapdb was successfully updated"
    click_on "Back"
  end

  test "should destroy Snapdb" do
    visit snapdb_url(@snapdb)
    click_on "Destroy this snapdb", match: :first

    assert_text "Snapdb was successfully destroyed"
  end
end
