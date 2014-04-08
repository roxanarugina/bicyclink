class AddRepairCategoryToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :cat_repair, :boolean
    add_column :point_of_interests, :cat_shop, :boolean
    add_column :point_of_interests, :cat_cafe, :boolean
    add_column :point_of_interests, :cat_event, :boolean 
    add_column :point_of_interests, :cat_rent_a_bike, :boolean
    add_column :point_of_interests, :cat_bike_station, :boolean
    add_column :point_of_interests, :cat_unsafe, :boolean
  end
end
