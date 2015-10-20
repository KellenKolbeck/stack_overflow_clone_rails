require 'rails_helper'


describe "the add a question process" do
  it "adds a new question" do
    login_user
    click_on "New Question"
    fill_in "Question content", with: "Fuck FactoryGirl?"
    click_on "Create Question"
    expect(page).to have_content "Fuck FactoryGirl?"
  end



  # def login_user
  #   visit root_path
  #   click_link "Sign Up"
  #   fill_in "User name", with: "cat"
  #   fill_in "Email", with: "cat@cat.com"
  #   fill_in "Password", with: "cat"
  #   fill_in "Password confirmation", with: "cat"
  #   click_on "Sign up"
  # end
end
