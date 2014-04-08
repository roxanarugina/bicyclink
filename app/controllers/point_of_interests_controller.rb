class PointOfInterestsController < ApplicationController
  	def create
	  	@point_of_interest = PointOfInterest.create(point_of_interest_params)
		if @point_of_interest.save 
			redirect_to static_pages_places_path
		else
			redirect_to static_pages_about_path
		end
	end


private

	def point_of_interest_params
		 params.require(:point_of_interest).permit(:name, :address, :description, :cat_shop, :cat_cafe, :cat_event, :cat_rent_a_bike, :cat_bike_station, :cat_unsafe)
	end
end
