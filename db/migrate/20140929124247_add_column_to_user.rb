class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :remeber_me, :string
  end
end
