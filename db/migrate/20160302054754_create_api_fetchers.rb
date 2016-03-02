class CreateApiFetchers < ActiveRecord::Migration
  def change
    create_table :api_fetchers do |t|

      t.timestamps null: false
    end
  end
end
