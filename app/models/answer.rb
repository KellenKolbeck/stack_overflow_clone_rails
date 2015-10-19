class Answer < ActiveRecord::Base
  belongs_to :question
  validates :answer_content, :presence => true
end
