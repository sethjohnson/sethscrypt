class AddDeckDependency < ActiveRecord::Migration
  def self.up
    add_column :cards, :deck_id, :integer
  end

  def self.down
    remove_column :cards, :deck_id
  end
end
