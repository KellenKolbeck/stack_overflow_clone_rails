require 'rails_helper'

describe "the update question process" do
  it "updates a question" do
    login_user
    question = FactoryGirl.create(:question)
    visit root_path
    click_link "How are you?"
    click_on "Update"
    fill_in "Question content", with: "Totally fuck FactoryGirl?"
    click_on "Update Question"
    expect(page).to have_content "Totally fuck FactoryGirl?"
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
