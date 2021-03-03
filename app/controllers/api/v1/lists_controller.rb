class Api::V1::ListsController < ApplicationController
    def index
        user = User.find_by(id: params[:user_id])
        if user 
            lists = user.lists 
            render json: ListSerializer.new(lists)
        else 
            lists = List.all
            render json: ListSerializer.new(lists)   
        end
    end

    def show 
        user = User.find_by(id: params[:user_id])
        if user 
            user = User.find_by(id: params[:user_id])
            list = List.find_by(id: params[:id])
            render json: ListSerializer.new(list)
        else
            list = List.find_by(id: params[:id])
            render json: ListSerializer.new(list)      
        end
    end

    def create 
        list = List.new(list_params)
        list.user = current_user
        if list.save 
            render json: ListSerializer.new(list), status: :accepted
        else
            render json: {errors: list.errors.full_messages}, status: :unprocessable_entity        
        end
    end

    private 

    def list_params 
        params.require(:list).permit(:name)
    end
    
end
