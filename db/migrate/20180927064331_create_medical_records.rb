class CreateMedicalRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :medical_records, id: :uuid do |t|
      t.references :doctor, type: :uuid, index: true
      t.references :patient, type: :uuid, index: true
      t.text :illness_description
      t.text :doctor_solution
      
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
