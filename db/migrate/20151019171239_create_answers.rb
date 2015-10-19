class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :answer_content, :string
      t.column :question_id, :string
      t.column :up_vote, :integer
      t.column :down_vote, :integer

      t.timestamps
    end
  end
end
