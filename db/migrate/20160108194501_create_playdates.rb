class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
