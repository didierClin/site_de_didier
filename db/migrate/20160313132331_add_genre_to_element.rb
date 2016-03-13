class AddGenreToElement < ActiveRecord::Migration
  def change
    add_column :elements, :genre, :string
  end
end
