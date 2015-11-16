class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.string :title
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
