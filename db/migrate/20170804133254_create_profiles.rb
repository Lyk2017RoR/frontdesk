class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :address
      t.string :birthday

      t.timestamps
    end
  end
end
