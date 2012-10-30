class Course < ActiveRecord::Base
  attr_accessible :link, :summary, :title, :video

  belongs_to :teacher
  has_and_belongs_to_many :students
  has_many :lessons
end
