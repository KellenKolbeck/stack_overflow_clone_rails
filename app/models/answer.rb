class Answer < ActiveRecord::Base
  validates :answer_content, :presence => true
end
