class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.string :fonction
      t.integer :order
      t.string :date
      t.string :entite
      t.text :description
      t.text :tags
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at

      t.timestamps null: false
    end
  end
end
