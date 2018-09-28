class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments, id: :uuid do |t|
      t.string :name
      t.references :doctor, type: :uuid, index: true
      t.references :hospital, type: :uuid, index: true

      t.datetime :deleted_at
      t.timestamps
    end

  end
end
