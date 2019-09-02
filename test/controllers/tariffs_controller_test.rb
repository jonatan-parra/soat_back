require 'test_helper'

class TariffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tariff = tariffs(:one)
  end

  test "should get index" do
    get tariffs_url, as: :json
    assert_response :success
  end

  test "should create tariff" do
    assert_difference('Tariff.count') do
      post tariffs_url, params: { tariff: { age: @tariff.age, code: @tariff.code, commercial_rate: @tariff.commercial_rate, fosyga_contribution: @tariff.fosyga_contribution, premium_value: @tariff.premium_value, runt_rate: @tariff.runt_rate, subtotal_premium_and_contribution: @tariff.subtotal_premium_and_contribution, subtype: @tariff.subtype, total_to_pay: @tariff.total_to_pay, vehicle_class: @tariff.vehicle_class, year: @tariff.year } }, as: :json
    end

    assert_response 201
  end

  test "should show tariff" do
    get tariff_url(@tariff), as: :json
    assert_response :success
  end

  test "should update tariff" do
    patch tariff_url(@tariff), params: { tariff: { age: @tariff.age, code: @tariff.code, commercial_rate: @tariff.commercial_rate, fosyga_contribution: @tariff.fosyga_contribution, premium_value: @tariff.premium_value, runt_rate: @tariff.runt_rate, subtotal_premium_and_contribution: @tariff.subtotal_premium_and_contribution, subtype: @tariff.subtype, total_to_pay: @tariff.total_to_pay, vehicle_class: @tariff.vehicle_class, year: @tariff.year } }, as: :json
    assert_response 200
  end

  test "should destroy tariff" do
    assert_difference('Tariff.count', -1) do
      delete tariff_url(@tariff), as: :json
    end

    assert_response 204
  end
end
