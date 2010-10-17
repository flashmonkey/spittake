class CreateSpits < ActiveRecord::Migration
  def self.up
    create_table :spits do |t|
      t.string :title
      t.text :description
      t.string :uri
      t.integer :contributor_id
      t.integer :type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :spits
  end
end
