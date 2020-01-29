class CreateCustomersData < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "age"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.integer "zipcode"
    t.string "password"
    end
  end
end
