class PointOfInterestsController < ApplicationController
  	def create
	  	@point_of_interest = PointOfInterest.create(point_of_interest_params)
		if @point_of_interest.save 
			redirect_to root_path
		else
			redirect_to static_pages_about_path
			
		end
	end


private

	def point_of_interest_params
		 params.require(:point_of_interest).permit(:name, :address, :description)
	end
end
