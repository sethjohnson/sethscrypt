class CreateSuits < ActiveRecord::Migration
  def self.up
    create_table :suits do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :suits
  end
end
