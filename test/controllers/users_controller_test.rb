require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "get new user page" do
    get new_user_path
    assert_template :new
  end

  test "create user succeeded" do
    post users_path, params: { user: { email: "test@example.com", first_name: "Danny", last_name: "Hsu", address: "123 Main St" } }
    assert_redirected_to users_path
    assert_equal "Welcome to fandnext", flash[:success]
  end

  test "create user failed" do
    post users_path, params: { user: { email: "test@example.invalid", first_name: "Danny", last_name: "Hsu", address: "123 Main St" } }
    assert_template :new
    assert_equal "Domain invalid", flash[:warning]
  end
end