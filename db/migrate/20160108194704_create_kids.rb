class CreateKids < ActiveRecord::Migration
  def change
    create_table :kids do |t|
      t.string :name
      t.references :parent, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
