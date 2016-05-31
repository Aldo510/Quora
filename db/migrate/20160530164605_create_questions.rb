class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :user_id
      t.string :question
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
