class CreateAuthorRelationships < ActiveRecord::Migration
  def self.up
    create_table :author_relationships do |t|
      t.integer :work_id
      t.integer :author_id

      t.timestamps
    end
    add_index :author_relationships, :work_id
    add_index :author_relationships, :author_id
    add_index :author_relationships, [:author_id, :work_id], :unique => true

  end

  def self.down
    drop_table :author_relationships
  end
end
