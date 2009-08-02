class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employee,  :id=>false, :force=>true do |t|
      t.string :empid
      t.string :name
      t.datetime :hiredate
      t.datetime :terminated
      t.string :supervisor
      t.datetime :beg_time
      t.boolean :rememberlast
      t.string :client
      t.string :project
      t.string :task
      t.integer :security
      t.datetime :supervisor_note_expires
      t.boolean :supervisor_note_onlyonce
      t.boolean :supervisor_note_active
      t.text :supervisor_note
      t.datetime :last_login
    end
  end

  def self.down
    drop_table :employee
  end
end
