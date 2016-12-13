require 'test_helper'

class UserstatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userstat = userstats(:one)
  end

  test "should get index" do
    get userstats_url
    assert_response :success
  end

  test "should get new" do
    get new_userstat_url
    assert_response :success
  end

  test "should create userstat" do
    assert_difference('Userstat.count') do
      post userstats_url, params: { userstat: { games_played: @userstat.games_played, goals: @userstat.goals, minutes_played: @userstat.minutes_played, red_cards: @userstat.red_cards, yellow_cards: @userstat.yellow_cards } }
    end

    assert_redirected_to userstat_url(Userstat.last)
  end

  test "should show userstat" do
    get userstat_url(@userstat)
    assert_response :success
  end

  test "should get edit" do
    get edit_userstat_url(@userstat)
    assert_response :success
  end

  test "should update userstat" do
    patch userstat_url(@userstat), params: { userstat: { games_played: @userstat.games_played, goals: @userstat.goals, minutes_played: @userstat.minutes_played, red_cards: @userstat.red_cards, yellow_cards: @userstat.yellow_cards } }
    assert_redirected_to userstat_url(@userstat)
  end

  test "should destroy userstat" do
    assert_difference('Userstat.count', -1) do
      delete userstat_url(@userstat)
    end

    assert_redirected_to userstats_url
  end
end
