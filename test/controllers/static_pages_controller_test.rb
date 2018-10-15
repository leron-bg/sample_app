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
    get help_path
    assert_response :success
  end

  test "should get about" do
    get about_path
    assert_response :success
  end

  test "should get contact" do
    get contact_path
    assert_response :success
  end

  test "should have help title" do
    get help_path
    assert_select "title", "Help | #{@suffix}"
  end

  test "should have about title" do
    get about_path
    assert_select "title", "About | #{@suffix}"
  end

  test "should have contact title" do
    get contact_path
    assert_select "title", "Contact | #{@suffix}"
  end
end
