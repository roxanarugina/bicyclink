class AddCategoryToPointOfInterest < ActiveRecord::Migration
  def change
    add_column :point_of_interests, :category, :string
  end
end
