class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :creator_id
      t.string :title

      t.timestamps
    end
  end
end
