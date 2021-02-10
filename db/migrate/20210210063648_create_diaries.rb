class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :sentence,         null: false, default: ""
      t.integer :sleep,           null: false
      t.integer :meal,            null: false
      t.integer :motion,          null: false
      t.integer :study,           null: false
      t.integer :margin,          null: false
      t.integer :tired,           null: false
      t.integer :dream,           null: false
      t.integer :output,          null: false
      t.integer :today_goal,      null: false
      t.datetime :diary_time
      
      t.timestamps
    end
  end
end
