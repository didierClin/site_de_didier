class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :language
      t.string :slug

      t.timestamps null: false
    end
  end
end
