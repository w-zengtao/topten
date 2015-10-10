class AddIndexToNode < ActiveRecord::Migration
  def change
    add_column :nodes, :index, :integer
    add_column :nodes, :line_id, :integer
    add_column :nodes, :decription, :text
    add_column :nodes, :nation_id, :integer

    add_column :photos, :title, :string
    add_column :photos, :content, :string
  end
end
