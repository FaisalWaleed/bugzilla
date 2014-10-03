class RemoveColumnFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :creator_id
  end

  def down
    add_column :projects, :creator_id, :integer
  end
end
