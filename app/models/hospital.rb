class Hospital < ApplicationRecord

	#Relationships & Associations

	has_many :doctors

	validates_presence_of :name
	validates_presence_of :location
	validates :name, length: { minimum: 2 }
	validates :location, length: { minimum: 2 }
	
	# Named Scopes

	scope :sorted_by_name, lambda { order("hospitals.name ASC") }
	scope :sorted_by_location, lambda { order("hospitals.location ASC") }

	def self.with_name(nam)
		where(:name=>nam)
	end

	def self.with_location(clocation)
		where(:location=>clocation)
	end

end
