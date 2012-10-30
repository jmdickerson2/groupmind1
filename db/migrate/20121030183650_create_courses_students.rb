class CreateCoursesStudents < ActiveRecord::Migration
  def change
  	create_table :courses_students do |t|
  		t.references :course
  		t.references :student  
  end
  add_index :courses_students, :course_id
  add_index :courses_students, :student_id
  end
end
