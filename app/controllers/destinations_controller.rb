class DestinationsController < ApplicationController

# before_action :current_destination, only: [:show, :edit, :update, :destroy]

def show
    @destination = Destination.find(params[:id])
end

# def edit 
# end 

# def new
#     @destination = Destination.new
# end

# def create
#     destination = Destination.create(current_destination)
#     redirect_to destination_path(destination)
# end

# def update
#     @destination = Destination.update(destination_params)
#     redirect_to @destination
# end

# def destroy
#     @destination = Destination.destroy
#     redirect_to destinations

end 