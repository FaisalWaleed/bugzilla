class AddColumnToBugs < ActiveRecord::Migration
  def change
    add_column :bugs, :creator, :integer
  end
end
