require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "CS 232 Ruby on Rails Development"
  end
    
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "CS 232 Ruby on Rails Development"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end  

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end 

  # test "Should have contact on p or h1" do
  #   get :contact
  #   assert_select "p,h1", /(C||c)ontact/
  # end
  
  # test "Should have page title" do
  #   get :contact
  #   assert_select "h1.page-title", {:count => 1}
  # end
end
