class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :goal_id
      t.date :date
      t.boolean :accomplished
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
