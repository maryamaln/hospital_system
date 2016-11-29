class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :speciality
      t.belongs_to :hospital, index: true

      t.timestamps
    end
  end
end
