class CreateCardValues < ActiveRecord::Migration
  def self.up
    create_table :card_values do |t|
      t.string :name
      t.integer :worth

      t.timestamps
    end
  end

  def self.down
    drop_table :card_values
  end
end
