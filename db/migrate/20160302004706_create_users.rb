class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :house_number
      t.string :street
      t.string :city
      t.integer :zip

      t.timestamps null: false
    end
  end
end
