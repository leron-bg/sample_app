require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @suffix = "RoR"
  end

  test "should get root" do
    get root_url
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

  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should have help title" do
    get static_pages_help_url
    assert_select "title", "Help | #{@suffix}"
  end

  test "should have about title" do
    get static_pages_about_url
    assert_select "title", "About | #{@suffix}"
  end

  test "should have contcat title" do
    get static_pages_contact_url
    assert_select "title", "Contact | #{@suffix}"
  end
end
