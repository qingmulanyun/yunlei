class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments, id: :uuid do |t|
  
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
