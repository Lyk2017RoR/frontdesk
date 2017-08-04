class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.text :content
      t.references :category
      t.references :brand

      t.timestamps
    end
  end
end
