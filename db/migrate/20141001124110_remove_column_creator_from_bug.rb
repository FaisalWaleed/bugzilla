class RemoveColumnCreatorFromBug < ActiveRecord::Migration
  def up
    remove_column :bugs, :creator
  end

  def down
    add_column :bugs, :creator, :integer
  end
end
