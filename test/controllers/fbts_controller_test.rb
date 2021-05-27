require "test_helper"

class FbtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fbt = fbts(:one)
  end

  test "should get index" do
    get fbts_url
    assert_response :success
  end

  test "should get new" do
    get new_fbt_url
    assert_response :success
  end

  test "should create fbt" do
    assert_difference('Fbt.count') do
      post fbts_url, params: { fbt: { equipment: @fbt.equipment, number_of_locations: @fbt.number_of_locations, project: @fbt.project, radius_poc: @fbt.radius_poc, sla: @fbt.sla, status: @fbt.status, support_coverage: @fbt.support_coverage, support_engineer: @fbt.support_engineer, tent_set_type: @fbt.tent_set_type, warranty_start_date: @fbt.warranty_start_date } }
    end

    assert_redirected_to fbt_url(Fbt.last)
  end

  test "should show fbt" do
    get fbt_url(@fbt)
    assert_response :success
  end

  test "should get edit" do
    get edit_fbt_url(@fbt)
    assert_response :success
  end

  test "should update fbt" do
    patch fbt_url(@fbt), params: { fbt: { equipment: @fbt.equipment, number_of_locations: @fbt.number_of_locations, project: @fbt.project, radius_poc: @fbt.radius_poc, sla: @fbt.sla, status: @fbt.status, support_coverage: @fbt.support_coverage, support_engineer: @fbt.support_engineer, tent_set_type: @fbt.tent_set_type, warranty_start_date: @fbt.warranty_start_date } }
    assert_redirected_to fbt_url(@fbt)
  end

  test "should destroy fbt" do
    assert_difference('Fbt.count', -1) do
      delete fbt_url(@fbt)
    end

    assert_redirected_to fbts_url
  end
end
