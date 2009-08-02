class CreateControls < ActiveRecord::Migration
  def self.up
    create_table :control, :id=>false, :force=>true do |t|
      t.integer :controlid
      t.integer :recid
    end
  end

  def self.down
    drop_table :control
  end
end
