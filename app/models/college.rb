class College < ActiveRecord::Base
	has_many :coll_applications, dependent: :destroy
	has_many :students,:through => :coll_applications

	validates :name , presence: true,uniqueness: true, length: {minimum: 5, maximum: 50}
	validates :country,presence: true
	validates_numericality_of :min_sat_score,presence: true , :greater_than_or_equal_to => 200 , 
															  :less_than_or_equal_to  => 800
	validates :tution_fee,presence: true ,numericality: true

end
