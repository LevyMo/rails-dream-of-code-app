class CreateLessonTopics < ActiveRecord::Migration[8.0]
  def change
    create_table :lesson_topics do |t|
      t.integer :lesson_id
      t.integer :topic_id
      t.string :tag
      t.references :lessons, foreign_key: true
      t.references :topics, foreign_key: true
      t.timestamps
    end
  end
end
