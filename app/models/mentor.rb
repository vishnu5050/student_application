class Mentor < ActiveRecord::Base

	has_many :students


	validates :name ,presence: true,length: {maximum: 40}
	validates :age, presence: true,	 numericality: {greater_than_or_equal_to: 20 , lesser_than_or_equal_to: 75 }
	validates :gender, presence: true,inclusion: {in: %w(Choose Female Male ) }
	validates :bio , presence: true
	validates :country,presence: true,length: {minimum: 2, maximum: 20}

end
