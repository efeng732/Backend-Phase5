class ExpensesController < ApplicationController


    def index 
        expenses = Expense.all 
        render json: expenses 
    end 

    def show 
        expense = Expense.find(params[:id])
        render json: expense
    end 

    def create 
        expense = Expense.create(user_id: params[:user_id], month: params[:month], category: params[:category], price: params[:price], description: params[:description])
        render json: expense
    end 

    def update 
        expense = Expense.find(params[:id])
        expense.update(month: params[:month], category: params[:category], price: params[:price], description: params[:description])
        render json: expense 
    end 

    def destroy 
        expense = Expense.find(params[:id]).destroy 
        render json: {}
    end 

end
