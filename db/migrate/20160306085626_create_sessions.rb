class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :session_name
      t.string :session_link

      t.timestamps null: false
    end
  end
end
