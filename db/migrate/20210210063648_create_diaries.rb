class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :sentence,         null: false, default: ""
      t.integer :sleep,           null: false
      t.integer :meal,            null: false
      t.integer :motion,          null: false
      t.integer :study,           null: false
      t.integer :output,          null: false
      t.integer :today_goal,      null: false
      t.integer :margin,          null: false
      t.integer :tired,           null: false
      t.integer :refresh,         null: false
      t.datetime :start_time
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
