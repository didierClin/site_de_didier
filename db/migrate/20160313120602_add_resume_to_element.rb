class AddResumeToElement < ActiveRecord::Migration
  def change
    add_column :elements, :resume, :string
  end
end
