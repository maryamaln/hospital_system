class WarehousePatient < ApplicationRecord
	
	#Relationships & Associations

	belongs_to :doctor

	validates_presence_of :name
	validates_presence_of :age
	validates_presence_of :contact_number

	#Names Scopes

	def self.with_name(cname)
		where(:name=>cname)
	end

	def self.with_age(cage)
		where(:age=>cage)
	end

	def self.with_number(number)
		where(:contact_number=>number)
	end


end
