class Question < ActiveRecord::Base
  has_many :answers
  validates :question_content, :presence => true
end
