class TasksController < ApplicationController
    def index 
        user = User.find_by(id: params[:user_id])
        if user 
            tasks = user.tasks 
            render json: tasks
        else
            tasks = Task.all 
            render json: tasks
        end
    end

    def show 
        user = User.find_by(id: params[:user_id])
        if user 
            task = Task.find_by(id: params[:id])
            list = task.list
            render json: task
        else
            task = Task.find_by(id: params[:id])
            render json: task    
        end
    end
end
