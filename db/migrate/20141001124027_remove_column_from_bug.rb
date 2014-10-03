class RemoveColumnFromBug < ActiveRecord::Migration
  def up
    remove_column :bugs, :proj_id
  end

  def down
    add_column :bugs, :proj_id, :integer
  end
end
