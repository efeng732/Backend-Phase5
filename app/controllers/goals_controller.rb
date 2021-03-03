class GoalsController < ApplicationController

    def index 
        goals = Goal.all 
        render json: goals 
    end 

    def show 
        goal = Goal.find(params[:id])
        render json: goal
    end 

    def create 
        goal = Goal.create(user_id: params[:user_id], month: params[:month], category: params[:category], budget: params[:budget])
        render json: goal
    end 

    def update 
        goal = Goal.find(params[:id])
        goal.update(month: params[:month], category: params[:category], budget: params[:budget])
        render json: goal 
    end 

    def destroy 
        goal = Goal.find(params[:id]).destroy 
        render json: {}
    end 



end
