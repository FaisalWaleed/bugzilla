class RemoveColumnFromBugs < ActiveRecord::Migration
  def up
    remove_column :bugs, :user_id
  end

  def down
    add_column :bugs, :user_id, :integer
  end
end
