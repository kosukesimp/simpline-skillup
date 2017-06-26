class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.text :question
      t.string :correct_answer 
      t.string :answer
      t.references :quizzew, foreign_key: true

      t.timestamps
    end
  end
end
