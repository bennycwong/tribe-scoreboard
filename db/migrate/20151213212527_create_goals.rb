class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :type_id
      t.boolean :active
      t.string :description

      t.timestamps null: false
    end
  end
end
