class CreateWarehousePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :warehouse_patients do |t|
      t.string :name
      t.string :age
      t.string :contact_number
      t.belongs_to :doctor, index: true

      t.timestamps
    end
  end
end
