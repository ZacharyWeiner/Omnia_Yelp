class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant

	  validates :rating, presence: true
	  validates :rating, numericality: {
	  	only_iteger: true, 
	  	greater_than_or_equal_to: 1, less_than_or_equal_to: 5,
	  	message: "Can only be a whole number between 1-5"
	  }
end
