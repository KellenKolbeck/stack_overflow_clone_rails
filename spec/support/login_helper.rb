module LoginHelper
  def login_user
    visit root_path
    click_link "Sign Up"
    fill_in "User name", with: "cat"
    fill_in "Email", with: "cat@cat.com"
    fill_in "Password", with: "cat"
    fill_in "Password confirmation", with: "cat"
    click_on "Sign up"
  end
end
