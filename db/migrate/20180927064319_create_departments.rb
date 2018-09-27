class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments, id: :uuid do |t|
  
      t.datetime :deleted_at
      t.timestamps
    end
    
  end
end
