class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.string :gender
      t.float :height
      t.float :weight
      t.string :activity_level
      t.string :goal
      t.float :target_intake

      t.timestamps
    end
  end
end
