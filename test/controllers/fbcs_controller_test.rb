require "test_helper"

class FbcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fbc = fbcs(:one)
  end

  test "should get index" do
    get fbcs_url
    assert_response :success
  end

  test "should get new" do
    get new_fbc_url
    assert_response :success
  end

  test "should create fbc" do
    assert_difference('Fbc.count') do
      post fbcs_url, params: { fbc: { CSM: @fbc.CSM, Equipment: @fbc.Equipment, Live_Locations: @fbc.Live_Locations, SLA: @fbc.SLA, Staff_Dashboard: @fbc.Staff_Dashboard, Support_Coverage: @fbc.Support_Coverage, Support_Engineer: @fbc.Support_Engineer, Total_Locations: @fbc.Total_Locations, Warranty_Start_Date: @fbc.Warranty_Start_Date, project: @fbc.project, status: @fbc.status } }
    end

    assert_redirected_to fbc_url(Fbc.last)
  end

  test "should show fbc" do
    get fbc_url(@fbc)
    assert_response :success
  end

  test "should get edit" do
    get edit_fbc_url(@fbc)
    assert_response :success
  end

  test "should update fbc" do
    patch fbc_url(@fbc), params: { fbc: { CSM: @fbc.CSM, Equipment: @fbc.Equipment, Live_Locations: @fbc.Live_Locations, SLA: @fbc.SLA, Staff_Dashboard: @fbc.Staff_Dashboard, Support_Coverage: @fbc.Support_Coverage, Support_Engineer: @fbc.Support_Engineer, Total_Locations: @fbc.Total_Locations, Warranty_Start_Date: @fbc.Warranty_Start_Date, project: @fbc.project, status: @fbc.status } }
    assert_redirected_to fbc_url(@fbc)
  end

  test "should destroy fbc" do
    assert_difference('Fbc.count', -1) do
      delete fbc_url(@fbc)
    end

    assert_redirected_to fbcs_url
  end
end
