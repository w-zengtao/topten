class RenameColumnInNations < ActiveRecord::Migration
  def change
    rename_column :nations, :parent, :father
  end
end
