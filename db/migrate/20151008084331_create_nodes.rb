class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :default_photo
      t.string :name
      t.multi_point :points
      t.st_point :center

      t.timestamps null: false
    end
  end
end
