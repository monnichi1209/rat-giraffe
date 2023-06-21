require 'test_helper'

class NearestStationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nearest_stations_index_url
    assert_response :success
  end

  test "should get show" do
    get nearest_stations_show_url
    assert_response :success
  end

  test "should get create" do
    get nearest_stations_create_url
    assert_response :success
  end

  test "should get update" do
    get nearest_stations_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nearest_stations_destroy_url
    assert_response :success
  end

end
