class CreatePointOfInterests < ActiveRecord::Migration
  def change
    create_table :point_of_interests do |t|
      t.string :name
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
