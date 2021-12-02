class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
