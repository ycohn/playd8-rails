class CreateKidsPlaydates < ActiveRecord::Migration
  def change
    create_table :kids_playdates do |t|
      t.references :kid, index: true, foreign_key: true
      t.references :playdate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
