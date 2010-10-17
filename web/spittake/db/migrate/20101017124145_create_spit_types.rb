class CreateSpitTypes < ActiveRecord::Migration
  def self.up
    create_table :spit_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :spit_types
  end
end
