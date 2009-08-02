class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects,  :id=>false, :force=>true do |t|
      t.string :client
      t.string :project
      t.string :task
      t.string :description
      t.boolean :billable
      t.boolean :timecard
    end
  end

  def self.down
    drop_table :projects
  end
end
