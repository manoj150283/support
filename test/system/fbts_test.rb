require "application_system_test_case"

class FbtsTest < ApplicationSystemTestCase
  setup do
    @fbt = fbts(:one)
  end

  test "visiting the index" do
    visit fbts_url
    assert_selector "h1", text: "Fbts"
  end

  test "creating a Fbt" do
    visit fbts_url
    click_on "New Fbt"

    fill_in "Equipment", with: @fbt.equipment
    fill_in "Number of locations", with: @fbt.number_of_locations
    fill_in "Project", with: @fbt.project
    fill_in "Radius poc", with: @fbt.radius_poc
    fill_in "Sla", with: @fbt.sla
    fill_in "Status", with: @fbt.status
    fill_in "Support coverage", with: @fbt.support_coverage
    fill_in "Support engineer", with: @fbt.support_engineer
    fill_in "Tent set type", with: @fbt.tent_set_type
    fill_in "Warranty start date", with: @fbt.warranty_start_date
    click_on "Create Fbt"

    assert_text "Fbt was successfully created"
    click_on "Back"
  end

  test "updating a Fbt" do
    visit fbts_url
    click_on "Edit", match: :first

    fill_in "Equipment", with: @fbt.equipment
    fill_in "Number of locations", with: @fbt.number_of_locations
    fill_in "Project", with: @fbt.project
    fill_in "Radius poc", with: @fbt.radius_poc
    fill_in "Sla", with: @fbt.sla
    fill_in "Status", with: @fbt.status
    fill_in "Support coverage", with: @fbt.support_coverage
    fill_in "Support engineer", with: @fbt.support_engineer
    fill_in "Tent set type", with: @fbt.tent_set_type
    fill_in "Warranty start date", with: @fbt.warranty_start_date
    click_on "Update Fbt"

    assert_text "Fbt was successfully updated"
    click_on "Back"
  end

  test "destroying a Fbt" do
    visit fbts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fbt was successfully destroyed"
  end
end
