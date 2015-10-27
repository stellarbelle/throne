class PlacesController < ApplicationController
	def new
	end
	def create
	end
	def show
		@user=User.all
		@reviews=Review.all
		@places=Place.all
	end
end