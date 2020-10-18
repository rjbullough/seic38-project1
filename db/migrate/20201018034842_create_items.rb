class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :entry_id
      t.text :name
      t.float :protein
      t.float :carb
      t.float :fat
      t.float :energy
    end
  end
end
