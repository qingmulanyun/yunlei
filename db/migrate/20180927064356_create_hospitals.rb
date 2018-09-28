class CreateHospitals < ActiveRecord::Migration[5.2]
  def change
    create_table :hospitals, id: :uuid do |t|
      t.string :name
      t.text :description
  
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
