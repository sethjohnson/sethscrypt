class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.integer :suit_id
      t.integer :value_id

      t.timestamps
    end
  end

  def self.down
    drop_table :cards
  end
end
