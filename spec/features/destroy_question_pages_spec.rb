require 'rails_helper'

describe "the destroy question process" do
  it "destroys a question" do
    login_user
    question = FactoryGirl.create(:question)
    visit root_path
    click_on question.question_content
    click_on "Delete"
    visit root_path
    expect(page).to have_no_content question.question_content

  end
end
