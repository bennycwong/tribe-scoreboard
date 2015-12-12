class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :goal
      t.date :date
      t.boolean :accomplished
      t.integer :type_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
