class Review < ActiveRecord::Base
	belongs_to :user
	belongs_to :item

	validates :user_id, :item_id, :presence => true
	validate :user_can_only_review_once_per_item, :user_can_only_review_two_times 

	def user_can_only_review_once_per_item
		matched_reviews = Review.where(:user_id => self.user_id, :item_id => self.item_id)
		if matched_reviews.empty? == false 
			errors.add(:number_of_reviews, "is limited to one per movie per user")
		end
	end

	def user_can_only_review_two_times
		num_reviews = Review.where(:user_id => self.user_id)
		if num_reviews.length >= 2
			errors.add(:number_of_reviews, "cannot exceed past two")
		end
	end 
end

