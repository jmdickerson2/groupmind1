# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121030183650) do

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "video"
    t.string   "link"
    t.integer  "teacher_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "courses", ["teacher_id"], :name => "index_courses_on_teacher_id"

  create_table "courses_students", :force => true do |t|
    t.integer "course_id"
    t.integer "student_id"
  end

  add_index "courses_students", ["course_id"], :name => "index_courses_students_on_course_id"
  add_index "courses_students", ["student_id"], :name => "index_courses_students_on_student_id"

  create_table "lessons", :force => true do |t|
    t.string   "title"
    t.text     "instructions"
    t.string   "video"
    t.string   "homework"
    t.integer  "course_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "lessons", ["course_id"], :name => "index_lessons_on_course_id"

  create_table "students", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.text     "bio"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
