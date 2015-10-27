require 'test_helper'

class SiteStructureTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "layout links" do
   get root_path
   assert_template 'login/welcome'
   assert_select "a[href=?]", root_path
   assert_select "a[href=?]", help_path
   assert_select "a[href=?]", about_path
   assert_select "a[href=?]", contact_path
   assert_select "a[href=?]", signup_path
   assert_select "a[href=?]", home_path
  end


end
