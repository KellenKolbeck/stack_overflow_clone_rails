require 'rails_helper'

describe "the add answer process" do
  it "adds an answer to a question" do

    answer = FactoryGirl.create(:answer)
    login_user
    click_on answer.question.question_content
    expect(page).to have_content answer.answer_content
  end
end
