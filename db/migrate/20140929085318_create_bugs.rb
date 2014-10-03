class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :tilte
      t.string :description
      t.date :deadline
      t.string :img
      t.string :status
      t.string :bug_type
      t.integer :proj_id
      t.integer :user_id

      t.timestamps
    end
  end
end
