class Fivelet < ApplicationRecord
	validates_presence_of :artist1, :artist2, :artist3, :artist4, :artist5
	def new
		if user_signed_in? == true
			belongs_to :user
		else
		end
	end
end