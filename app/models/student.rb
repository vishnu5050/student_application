class Student < ActiveRecord::Base

	belongs_to :mentor
	has_many :coll_applications
	has_many :colleges ,:through => :coll_applications

	before_save {self.name = name.capitalize}



	validates :name,presence: true,length: {maximum: 40}
	validates :age, presence: true,	 numericality: {greater_than_or_equal_to: 16 , lesser_than_or_equal_to: 30 }
	validates :gender,presence: true,inclusion: {in: %w(Choose Female Male ) }
 	validates :current_school ,presence: true, length: {maximum: 50}
	validates :current_level,presence: true
	validates :country,presence: true,length: {minimum: 2, maximum: 20}
	validates :sat_score,presence: true, numericality: {greater_than_or_equal_to: 200 , lesser_than_or_equal_to: 800 }
end

