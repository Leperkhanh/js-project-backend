class ListsController < ApplicationController
    def index
        user = User.find_by(id: params[:id])
        if @user 
            lists = user.lists 
            render json: lists
        else 
            lists = List.all
            render json: lists   
        end
    end
    
end
