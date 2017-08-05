class RemoveColumnImagesToCategories < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :images, :string
  end
end
