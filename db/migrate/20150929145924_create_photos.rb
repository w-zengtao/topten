class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :node_id
      t.integer :index
      t.string :media

      t.timestamps null: false
    end
  end
end
