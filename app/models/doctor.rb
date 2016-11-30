class Doctor < ApplicationRecord

	#Relationships & Associations

	belongs_to :hospital
	has_many :warehouse_patients

	validates_presence_of :name
	validates_presence_of :speciality
	
	validates :name, length: { minimum: 2 }
	validates :speciality, length: { minimum: 2 }
	
	#Names Scopes
	
	scope :sorted_by_name, lambda { order("doctors.name ASC") }
	scope :sorted_by_speciality, lambda { order("doctors.speciality ASC") }

	def self.with_name(nam)
		where(:name=>nam)
	end

	def self.with_speciality(spec)
		where(:speciality=>spec)
	end

end
