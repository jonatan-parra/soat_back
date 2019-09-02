require 'test_helper'

class InsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get insurances_url, as: :json
    assert_response :success
  end

  test "should create insurance" do
    assert_difference('Insurance.count') do
      post insurances_url, params: { insurance: { end_date: @insurance.end_date, start_date: @insurance.start_date, tariff_id: @insurance.tariff_id, user_id: @insurance.user_id, vehicle_id: @insurance.vehicle_id } }, as: :json
    end

    assert_response 201
  end

  test "should show insurance" do
    get insurance_url(@insurance), as: :json
    assert_response :success
  end

  test "should update insurance" do
    patch insurance_url(@insurance), params: { insurance: { end_date: @insurance.end_date, start_date: @insurance.start_date, tariff_id: @insurance.tariff_id, user_id: @insurance.user_id, vehicle_id: @insurance.vehicle_id } }, as: :json
    assert_response 200
  end

  test "should destroy insurance" do
    assert_difference('Insurance.count', -1) do
      delete insurance_url(@insurance), as: :json
    end

    assert_response 204
  end
end
