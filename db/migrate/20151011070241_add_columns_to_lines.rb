class AddColumnsToLines < ActiveRecord::Migration
  def change
    add_column :lines, :title, :string
    add_column :lines, :decription, :text
  end
end
