class AddImagesToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :images, :string
  end
end
