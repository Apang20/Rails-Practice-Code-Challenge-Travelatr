class BloggersController < ApplicationController

    # before_action :current_blogger, only: [:show, :edit, :update, :destroy]

def show
    @blogger = Blogger.find(params[:id])
end

def new #view form with blogger object
    @blogger = Blogger.new
end 


def create #after form is submitted with data
    blogger = Blogger.create(blogger_params)
    redirect_to blogger_path(blogger)
end 

def edit
    @blogger = Blogger.find(params[:id])
end 

# def update
#     @blogger.update(blogger_params)
#     redirect_to @blogger 
# end

# def destroy
#     @blogger.destroy
#     redirect_to blogger_path 
# end 


# def current_blogger
#     @blogger = Blogger.find(params[:id])
# end

def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
end 

end 