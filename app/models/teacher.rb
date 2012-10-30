class Teacher < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :password

  has_many :courses
  has_many :lessons, :through => :courses
end
