class TasksController < ApplicationController
    before_action :find_task, only:[:show, :update, :destroy]
    def index
        @tasks = Task.all
        render :json => @tasks
    end

    def show
        render :json => @task
    end


    def create
        if current_user
            @task = Task.create(task_params)
            render json: @task
        else
            render json: { errors: @task.errors.full_messages }
        end
    end

    def update
        @task.update(task_params)
        @task.save
        render json: @task
    end

    def destroy
        @task.destroy
        render json: @tasks
    end

    private
    def find_task
        @task = Task.find_by(id: params[:id])
    end

    def task_params
        params.require(:task).permit(:task_name, :task_img, :task_amount, :completed, :submitted, :user_id, :parent_id)
    end
end
