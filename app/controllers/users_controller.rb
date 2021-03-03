class UsersController < ApplicationController

    before_action :authenticate, only: [:show]

    def login 
        render json: User.first
     end 
  
     def index 
         users = User.all
         render json: users 
     end 

     def show
        render json: @current_user 
     end
  
     def logout 
        @current_user = nil 
        render json: {}
     end 
  
     def create 
        user = User.create(username: params[:username], password: params[:password], bio: params[:bio])
        render json: user
     end 

end
