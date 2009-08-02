class CreateTimelines < ActiveRecord::Migration
  def self.up
    create_table :timeline,  :id=>false, :force=>true do |t|
      t.integer :recid
      t.string :empid
      t.datetime :beg_date
      t.datetime :beg_time
      t.datetime :end_time
      t.float :off_time
      t.float :personal_time
      t.float :total_time
      t.string :client
      t.string :project
      t.string :task
      t.boolean :billable
      t.boolean :timecard
      t.string :bug_nbr
      t.string :case_nbr
      t.text :description
      t.datetime :dt_create
      t.datetime :dt_edit
    end
  end

  def self.down
    drop_table :timeline
  end
end
