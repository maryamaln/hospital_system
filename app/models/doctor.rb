class Doctor < ApplicationRecord

	#Relationships & Associations

	belongs_to :hospital
	has_many :warehouse_patients

	validates_presence_of :name
	validates_presence_of :speciality

	#Names Scopes
	
	def self.with_name(nam)
		where(:name=>nam)
	end

	def self.with_speciality(spec)
		where(:speciality=>spec)
	end

end
