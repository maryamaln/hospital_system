class WarehousePatient < ApplicationRecord
	
	#Relationships & Associations

	belongs_to :doctor

	validates_presence_of :name
	validates_presence_of :age
	validates_presence_of :contact_number
	validates :name, length: { minimum: 2 }
	validates :contact_number, length: { minimum: 4 }

	#Names Scopes

	scope :sorted_by_name, lambda { order("warehouse_patients.name ASC") }
	scope :sorted_by_age, lambda { order("warehouse_patients.age ASC") }
	scope :sorted_by_age, lambda { order("warehouse_patients.contact_number ASC") }

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
