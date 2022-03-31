class CreateSneakers < ActiveRecord::Migration[6.1]
  def change
    create_table :sneakers do |t|
      t.boolean :released
      t.text :image
      t.text :logo
      t.string :tilte
      t.date :release_date
      t.float :price

      t.timestamps
    end
  end
end
