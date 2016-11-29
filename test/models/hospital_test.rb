require 'test_helper'

class HospitalTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "the truth" do
    assert true
  end

  test "Hospital should not be created without name" do
  	hospital = Hospital.new(location: 'Qatar') 
    assert_not hospital.save
  end

  test "Hospital should not be created without location" do
  	hospital = Hospital.new(name: 'Maryam') 
    assert_not hospital.save
  end

end
