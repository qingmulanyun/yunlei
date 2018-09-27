class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :type
      t.date :date_of_birth
      t.string :status
      
      t.datetime :deleted_at
      t.timestamps
    end
    
    add_index :users, :deleted_at
  end
end
