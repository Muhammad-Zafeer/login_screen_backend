require "application_system_test_case"

class Posts1sTest < ApplicationSystemTestCase
  setup do
    @posts1 = posts1s(:one)
  end

  test "visiting the index" do
    visit posts1s_url
    assert_selector "h1", text: "Posts1s"
  end

  test "creating a Posts1" do
    visit posts1s_url
    click_on "New Posts1"

    fill_in "Body", with: @posts1.body
    fill_in "User", with: @posts1.user_id
    click_on "Create Posts1"

    assert_text "Posts1 was successfully created"
    click_on "Back"
  end

  test "updating a Posts1" do
    visit posts1s_url
    click_on "Edit", match: :first

    fill_in "Body", with: @posts1.body
    fill_in "User", with: @posts1.user_id
    click_on "Update Posts1"

    assert_text "Posts1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Posts1" do
    visit posts1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Posts1 was successfully destroyed"
  end
end
