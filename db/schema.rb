# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090802163515) do

  create_table "control", :id => false, :force => true do |t|
    t.integer "controlid"
    t.integer "recid"
  end

  create_table "employee", :id => false, :force => true do |t|
    t.string   "empid"
    t.string   "name"
    t.datetime "hiredate"
    t.datetime "terminated"
    t.string   "supervisor"
    t.datetime "beg_time"
    t.boolean  "rememberlast"
    t.string   "client"
    t.string   "project"
    t.string   "task"
    t.integer  "security"
    t.datetime "supervisor_note_expires"
    t.boolean  "supervisor_note_onlyonce"
    t.boolean  "supervisor_note_active"
    t.text     "supervisor_note"
    t.datetime "last_login"
  end

  create_table "projects", :id => false, :force => true do |t|
    t.string  "client"
    t.string  "project"
    t.string  "task"
    t.string  "description"
    t.boolean "billable"
    t.boolean "timecard"
  end

  create_table "timeline", :id => false, :force => true do |t|
    t.integer  "recid"
    t.string   "empid"
    t.datetime "beg_date"
    t.datetime "beg_time"
    t.datetime "end_time"
    t.float    "off_time"
    t.float    "personal_time"
    t.float    "total_time"
    t.string   "client"
    t.string   "project"
    t.string   "task"
    t.boolean  "billable"
    t.boolean  "timecard"
    t.string   "bug_nbr"
    t.string   "case_nbr"
    t.text     "description"
    t.datetime "dt_create"
    t.datetime "dt_edit"
  end

end
