# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101030023744) do

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",     :default => 0, :null => false
  end

  add_index "groups", ["user_id", "created_at"], :name => "index_groups_on_user_id_and_created_at"

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "priority"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id",     :default => 0, :null => false
    t.integer  "group_id",    :default => 0, :null => false
  end

  add_index "tasks", ["group_id", "user_id", "created_at"], :name => "index_tasks_on_group_id_and_user_id_and_created_at"
  add_index "tasks", ["user_id", "status", "updated_at"], :name => "index_tasks_on_user_id_and_status_and_updated_at"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
