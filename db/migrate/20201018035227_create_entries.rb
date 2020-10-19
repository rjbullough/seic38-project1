class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.date :date
      t.integer :user_id

      t.timestamps
    end
  end
end
