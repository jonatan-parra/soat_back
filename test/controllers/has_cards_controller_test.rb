require 'test_helper'

class HasCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @has_card = has_cards(:one)
  end

  test "should get index" do
    get has_cards_url, as: :json
    assert_response :success
  end

  test "should create has_card" do
    assert_difference('HasCard.count') do
      post has_cards_url, params: { has_card: { card_id: @has_card.card_id, user_id: @has_card.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show has_card" do
    get has_card_url(@has_card), as: :json
    assert_response :success
  end

  test "should update has_card" do
    patch has_card_url(@has_card), params: { has_card: { card_id: @has_card.card_id, user_id: @has_card.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy has_card" do
    assert_difference('HasCard.count', -1) do
      delete has_card_url(@has_card), as: :json
    end

    assert_response 204
  end
end
