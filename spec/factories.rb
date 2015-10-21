FactoryGirl.define do
  factory(:question) do
    question_content('How are you?')
  end

  factory(:answer) do
    answer_content("I am fine.")
    up_vote(0)
    down_vote(0)
    question
  end

  factory(:user) do
    user_name("cat")
    email("cat@cat.com")
    password("cat")
    password_confirmation("cat")
  end
end
