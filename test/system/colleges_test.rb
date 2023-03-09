require "application_system_test_case"

class CollegesTest < ApplicationSystemTestCase
  setup do
    @college = colleges(:one)
  end

  test "visiting the index" do
    visit colleges_url
    assert_selector "h1", text: "Colleges"
  end

  test "creating a College" do
    visit colleges_url
    click_on "New College"

    fill_in "Address", with: @college.address
    fill_in "Email", with: @college.email
    fill_in "Mobile", with: @college.mobile
    fill_in "Teacher", with: @college.teacher
    click_on "Create College"

    assert_text "College was successfully created"
    click_on "Back"
  end

  test "updating a College" do
    visit colleges_url
    click_on "Edit", match: :first

    fill_in "Address", with: @college.address
    fill_in "Email", with: @college.email
    fill_in "Mobile", with: @college.mobile
    fill_in "Teacher", with: @college.teacher
    click_on "Update College"

    assert_text "College was successfully updated"
    click_on "Back"
  end

  test "destroying a College" do
    visit colleges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "College was successfully destroyed"
  end
end
