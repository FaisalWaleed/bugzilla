class RemoveColumncreFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :creator_id
  end

  def down
    add_column :users, :creator_id, :integer
  end
end
