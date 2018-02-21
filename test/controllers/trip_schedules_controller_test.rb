require 'test_helper'

class TripSchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trip_schedule = trip_schedules(:one)
  end

  test "should get index" do
    get trip_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_trip_schedule_url
    assert_response :success
  end

  test "should create trip_schedule" do
    assert_difference('TripSchedule.count') do
      post trip_schedules_url, params: { trip_schedule: { user_id: @trip_schedule.user_id } }
    end

    assert_redirected_to trip_schedule_url(TripSchedule.last)
  end

  test "should show trip_schedule" do
    get trip_schedule_url(@trip_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_trip_schedule_url(@trip_schedule)
    assert_response :success
  end

  test "should update trip_schedule" do
    patch trip_schedule_url(@trip_schedule), params: { trip_schedule: { user_id: @trip_schedule.user_id } }
    assert_redirected_to trip_schedule_url(@trip_schedule)
  end

  test "should destroy trip_schedule" do
    assert_difference('TripSchedule.count', -1) do
      delete trip_schedule_url(@trip_schedule)
    end

    assert_redirected_to trip_schedules_url
  end
end
