require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

  test "should get help" do
    get static_pages_help_url
    assert_response :success
  end

  test "should get about" do
    get static_pages_about_url
    assert_response :success
  end

  test "should have home title" do
    get static_pages_home_url
    assert_select "title", "Home | RoR"
  end

  test "should have help title" do
    get static_pages_help_url
    assert_select "title", "Help | RoR"
  end

  test "should have about title" do
    get static_pages_about_url
    assert_select "title", "About | RoR"
  end
end
