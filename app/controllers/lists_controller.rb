class ListsController < ApplicationController
    def index
        user = User.find_by(id: params[:user_id])
        if user 
            lists = user.lists 
            render json: lists
        else 
            lists = List.all
            render json: lists   
        end
    end

    def show 
        user = User.find_by(id: params[:user_id])
        if user 
            user = User.find_by(id: params[:user_id])
            list = List.find_by(id: params[:id])
            render json: list
        else
            list = List.find_by(id: params[:id])
            render json: list       
        end
    end
    
end