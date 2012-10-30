class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :summary
      t.string :video
      t.string :link
      t.references :teacher

      t.timestamps
    end
    add_index :courses, :teacher_id
  end
end
