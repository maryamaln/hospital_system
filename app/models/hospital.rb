class Hospital < ApplicationRecord

	#Relationships & Associations

	has_many :doctors

	validates_presence_of :name
	validates_presence_of :location

	# Named Scopes

	def self.with_name(nam)
		where(:name=>nam)
	end

	def self.with_location(clocation)
		where(:location=>clocation)
	end

end
