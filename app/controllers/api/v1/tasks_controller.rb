class Api::V1::TasksController < ApplicationController
    def index 
        user = User.find_by(id: params[:user_id])
        if user
            tasks = user.tasks 
            render json: TaskSerializer.new(tasks)
        else
            tasks = Task.all 
            render json: TaskSerializer.new(tasks)
        end
    end

    def show 
        user = User.find_by(id: params[:user_id])
        if user 
            task = Task.find_by(id: params[:id])
            list = task.list
            render json: TaskSerializer.new(task)
        else
            task = Task.find_by(id: params[:id])
            render json: TaskSerializer.new(task)    
        end
    end

    def create 
        task = Task.new(task_params)
        task.user = current_user
        if task.save 
            render json: TaskSerializer.new(task), status: :accepted
        else
            render json: {errors: task.errors.full_messages}, status: :unprocessable_entity        
        end
    end

    private 

    def task_params 
        params.require(:task).permit(:body, :list_id)
    end
end
