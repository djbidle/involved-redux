class CreateBillData < ActiveRecord::Migration
  def change
    create_table :bill_data do |t|
      t.string :session
      t.string :bill_name
      t.string :origin_chamber_link
      t.string :origin_chamber_name
      t.string :bill_type
      t.string :bill_link

      t.timestamps null: false
    end
  end
end
