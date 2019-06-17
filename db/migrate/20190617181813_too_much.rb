class TooMuch < ActiveRecord::Migration[5.2]
  def change
    drop_table :scores
    rename_column :games, :score_id, :score
    remove_column :comments, :score_id 
  end
end
