class ChangeColumnDefaultForUser < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :target_intake, from: nil, to: 2000
  end
end
