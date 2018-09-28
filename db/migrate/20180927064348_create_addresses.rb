class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses, id: :uuid do |t|
      t.string :address
      t.string :suburb
      t.string :province
      t.string :postcode
      t.string :country
      t.string :address_type
      t.references :addressable, polymorphic: true, type: :uuid, index: true
      
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
