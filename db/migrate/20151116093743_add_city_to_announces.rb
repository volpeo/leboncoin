class AddCityToAnnounces < ActiveRecord::Migration
  def change
    add_column :announces, :city, :string
  end
end
