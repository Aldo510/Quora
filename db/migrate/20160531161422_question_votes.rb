class QuestionVotes < ActiveRecord::Migration
  def change
    create_table :question_votes do |t|
      t.integer :question_id
      t.integer :user_id
      t.integer :votes, default: 0
    end
  end
end
