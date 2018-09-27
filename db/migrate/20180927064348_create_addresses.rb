class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses, id: :uuid do |t|
  
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
