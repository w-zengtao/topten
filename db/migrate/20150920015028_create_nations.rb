class CreateNations < ActiveRecord::Migration
  def change
    create_table :nations do |t|
      t.string :code
      t.string :province
      t.string :city
      t.string :district
      t.integer :parent

      t.timestamps null: false
    end
  end
end
