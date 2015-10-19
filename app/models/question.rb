class Question < ActiveRecord::Base
  validates :question_content, :presence => true
end
