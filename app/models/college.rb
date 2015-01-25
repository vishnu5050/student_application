class College < ActiveRecord::Base
	has_many :coll_applications
	has_many :students,:through => :coll_applications

	validates :name , presence: true,uniqueness: true, length: {minimum: 5, maximum: 50}
	validates :country,presence: true,length: {minimum: 2, maximum: 20}
	validates :min_sat_score,presence: true ,numericality: {greater_than_or_equal_to: 200 , lesser_than_or_equal_to: 800}
	validates :tution_fee,presence: true ,numericality: true

end
