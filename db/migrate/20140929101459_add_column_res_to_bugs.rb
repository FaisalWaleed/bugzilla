class AddColumnResToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :resolver, :integer
  end
end
