class Student < ActiveRecord::Base
	attr_accessible :email, :name, :password

	has_and_belongs_to_many :courses
end
