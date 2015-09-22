class AddIndexToNations < ActiveRecord::Migration
  def change
    add_index :nations, :ancestry
  end
end
