class Lesson < ActiveRecord::Base
  attr_accessible :homework, :instructions, :title, :video
  
  belongs_to :course
end
