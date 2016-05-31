class AnswerVotes < ActiveRecord::Migration
  def change
    create_table :answer_votes do |t|
      t.integer :answer_id
      t.integer :user_id
      t.integer :votes, default: 0
    end
  end
end
