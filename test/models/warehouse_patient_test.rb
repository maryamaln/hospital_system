require 'test_helper'

class WarehousePatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "the truth" do
    assert true
  end

  test "WarehousePatient should not be created without name" do
  	patient = WarehousePatient.new(age: '12', contact_number: '+923216579750', doctor_id: 1) 
    assert_not patient.save
  end

  test "WarehousePatient should not be created without age" do
  	patient = WarehousePatient.new(name: 'Maryam', contact_number: '+923216579750', doctor_id: 1) 
    assert_not patient.save
  end

  test "WarehousePatient should not be created without contact_number" do
  	patient = WarehousePatient.new(name: 'Maryam', age: '25', doctor_id: 1) 
    assert_not patient.save
  end


  test "WarehousePatient should not be created without doctor_id" do
  	patient = WarehousePatient.new(name: 'Maryam', age: '25', contact_number: '+923216579750') 
    assert_not patient.save
  end

end
