class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :question_id
      t.string :answer
      t.integer :votes, default: 0

      t.timestamp
    end
  end
end
