class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
    end
  end
end
