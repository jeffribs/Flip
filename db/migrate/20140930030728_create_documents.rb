class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :post_id

      t.timestamps
    end

    add_index :documents, :post_id
    add_attachment :documents, :attachment
  end
end
