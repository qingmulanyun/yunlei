class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones, id: :uuid do |t|
      t.string :number
      t.string :phone_type
      t.boolean :active, default: true
      t.boolean :primary
      t.references :user, type: :uuid, index: true
      
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
