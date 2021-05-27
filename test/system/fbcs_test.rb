require "application_system_test_case"

class FbcsTest < ApplicationSystemTestCase
  setup do
    @fbc = fbcs(:one)
  end

  test "visiting the index" do
    visit fbcs_url
    assert_selector "h1", text: "Fbcs"
  end

  test "creating a Fbc" do
    visit fbcs_url
    click_on "New Fbc"

    fill_in "Csm", with: @fbc.CSM
    fill_in "Equipment", with: @fbc.Equipment
    fill_in "Live locations", with: @fbc.Live_Locations
    fill_in "Sla", with: @fbc.SLA
    fill_in "Staff dashboard", with: @fbc.Staff_Dashboard
    fill_in "Support coverage", with: @fbc.Support_Coverage
    fill_in "Support engineer", with: @fbc.Support_Engineer
    fill_in "Total locations", with: @fbc.Total_Locations
    fill_in "Warranty start date", with: @fbc.Warranty_Start_Date
    fill_in "Project", with: @fbc.project
    fill_in "Status", with: @fbc.status
    click_on "Create Fbc"

    assert_text "Fbc was successfully created"
    click_on "Back"
  end

  test "updating a Fbc" do
    visit fbcs_url
    click_on "Edit", match: :first

    fill_in "Csm", with: @fbc.CSM
    fill_in "Equipment", with: @fbc.Equipment
    fill_in "Live locations", with: @fbc.Live_Locations
    fill_in "Sla", with: @fbc.SLA
    fill_in "Staff dashboard", with: @fbc.Staff_Dashboard
    fill_in "Support coverage", with: @fbc.Support_Coverage
    fill_in "Support engineer", with: @fbc.Support_Engineer
    fill_in "Total locations", with: @fbc.Total_Locations
    fill_in "Warranty start date", with: @fbc.Warranty_Start_Date
    fill_in "Project", with: @fbc.project
    fill_in "Status", with: @fbc.status
    click_on "Update Fbc"

    assert_text "Fbc was successfully updated"
    click_on "Back"
  end

  test "destroying a Fbc" do
    visit fbcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fbc was successfully destroyed"
  end
end
