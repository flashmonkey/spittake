class CreateVideoHosts < ActiveRecord::Migration
  def self.up
    create_table :video_hosts do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :video_hosts
  end
end
