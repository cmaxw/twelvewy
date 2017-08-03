require 'test_helper'

class TwelveWeekYearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twelve_week_year = twelve_week_years(:one)
  end

  test "should get index" do
    get twelve_week_years_url
    assert_response :success
  end

  test "should get new" do
    get new_twelve_week_year_url
    assert_response :success
  end

  test "should create twelve_week_year" do
    assert_difference('TwelveWeekYear.count') do
      post twelve_week_years_url, params: { twelve_week_year: { ends_on: @twelve_week_year.ends_on, name: @twelve_week_year.name, starts_on: @twelve_week_year.starts_on } }
    end

    assert_redirected_to twelve_week_year_url(TwelveWeekYear.last)
  end

  test "should show twelve_week_year" do
    get twelve_week_year_url(@twelve_week_year)
    assert_response :success
  end

  test "should get edit" do
    get edit_twelve_week_year_url(@twelve_week_year)
    assert_response :success
  end

  test "should update twelve_week_year" do
    patch twelve_week_year_url(@twelve_week_year), params: { twelve_week_year: { ends_on: @twelve_week_year.ends_on, name: @twelve_week_year.name, starts_on: @twelve_week_year.starts_on } }
    assert_redirected_to twelve_week_year_url(@twelve_week_year)
  end

  test "should destroy twelve_week_year" do
    assert_difference('TwelveWeekYear.count', -1) do
      delete twelve_week_year_url(@twelve_week_year)
    end

    assert_redirected_to twelve_week_years_url
  end
end
