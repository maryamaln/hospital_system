require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "the truth" do
    assert true
  end

  test "Doctor should not be created without name" do
  	doctor = Doctor.new(speciality: 'Heart Surgeon', hospital_id: 1) 
    assert_not doctor.save
  end

  test "Doctor should not be created without speciality" do
  	doctor = Doctor.new(name: 'Maryam', hospital_id: 1) 
    assert_not doctor.save
  end

  test "Doctor should not be created without hospital_id" do
  	doctor = Doctor.new(name: 'Maryam', speciality: 'Heart Surgeon') 
    assert_not doctor.save
  end
  
end
