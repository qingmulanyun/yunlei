class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments, id: :uuid do |t|
      t.references :doctor, type: :uuid, index: true
      t.references :patient, type: :uuid, index: true
      t.string :status
      t.datetime :date
      t.text :description
      
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
