class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email, null: false
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end
    add_index :customers, :email, unique: true
  end
end
