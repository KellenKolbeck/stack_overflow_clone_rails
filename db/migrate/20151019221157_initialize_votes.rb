class InitializeVotes < ActiveRecord::Migration
  def change
    change_column_default(:answers, :up_vote, 0)
    change_column_default(:answers, :down_vote, 0)
  end
end
