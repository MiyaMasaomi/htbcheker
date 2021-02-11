class CreateDiaries < ActiveRecord::Migration[6.0]
  def change
    create_table :diaries do |t|
      t.string :sentence,         null: false, default: ""
      t.string :sleep,           null: false
      t.string :meal,            null: false
      t.string :motion,          null: false
      t.string :study,           null: false
      t.string :output,          null: false
      t.string :today_goal,      null: false
      t.string :margin,          null: false
      t.string :tired,           null: false
      t.string :refresh,         null: false
      t.datetime :start_time
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
