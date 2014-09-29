class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :start_date
      t.string :end_date
      t.string :category
      t.string :project_image
      t.integer :user_id

      t.timestamps
    end
  end
end
