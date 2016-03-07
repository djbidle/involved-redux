class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details do |t|
      t.text :bill_title
      t.string :bill_name
      t.string :bill_number
      t.string :bill_description
      t.string :bill_status
      t.string :bill_stage
      t.string :session
      t.string :origin_chamber_name
      t.string :current_chamber_name
      t.string :bill_type
      t.string :bill_link
      t.string :committee_status
      t.text :bill_digest
      t.string :bill_author_position_title
      t.string :bill_author_first_name
      t.string :bill_author_last_name
      t.string :bill_author_party
      t.string :bill_author_link
      t.string :bill_author_full_name

      t.timestamps null: false
    end
  end
end
