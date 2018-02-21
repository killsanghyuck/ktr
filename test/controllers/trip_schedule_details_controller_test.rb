require 'test_helper'

class TripScheduleDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_schedule_detail = trip_schedule_details(:one)
  end

  test "should get index" do
    get trip_schedule_details_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_schedule_detail_url
    assert_response :success
  end

  test "should create trip_schedule_detail" do
    assert_difference('TripScheduleDetail.count') do
      post trip_schedule_details_url, params: { trip_schedule_detail: { trip_schudule_id: @trip_schedule_detail.trip_schudule_id } }
    end

    assert_redirected_to trip_schedule_detail_url(TripScheduleDetail.last)
  end

  test "should show trip_schedule_detail" do
    get trip_schedule_detail_url(@trip_schedule_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_schedule_detail_url(@trip_schedule_detail)
    assert_response :success
  end

  test "should update trip_schedule_detail" do
    patch trip_schedule_detail_url(@trip_schedule_detail), params: { trip_schedule_detail: { trip_schudule_id: @trip_schedule_detail.trip_schudule_id } }
    assert_redirected_to trip_schedule_detail_url(@trip_schedule_detail)
  end

  test "should destroy trip_schedule_detail" do
    assert_difference('TripScheduleDetail.count', -1) do
      delete trip_schedule_detail_url(@trip_schedule_detail)
    end

    assert_redirected_to trip_schedule_details_url
  end
end
