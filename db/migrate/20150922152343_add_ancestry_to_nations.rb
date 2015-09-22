class AddAncestryToNations < ActiveRecord::Migration
  def change
    add_column :nations, :ancestry, :string
  end
  
end
