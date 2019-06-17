class AddColumnToComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :game_id, :integer
  end
end
