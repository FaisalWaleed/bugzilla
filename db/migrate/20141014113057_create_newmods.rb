class CreateNewmods < ActiveRecord::Migration
  def change
    create_table :newmods do |t|
      t.string :name

      t.timestamps
    end
  end
end
