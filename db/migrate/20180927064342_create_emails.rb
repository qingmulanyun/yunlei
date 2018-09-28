class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails, id: :uuid do |t|
      t.string :address, null: false
      t.boolean :primary
      t.boolean :active, default: true
      t.references :user, type: :uuid, index: true
      
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
