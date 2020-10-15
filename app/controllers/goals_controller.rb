class GoalsController < ApplicationController
    before_action :find_goal, only:[:show, :update]

    def index
        @goals = Goal.all
        render :json => @goals
    end

    def show
        render :json => @goal
    end

    def create
        if current_user
            @goal = Goal.create(goal_params)
            render json: @goal
        else
            render json: { errors: @goal.errors.full_messages }
        end
    end

    def update
        @goal.update(goal_params)
        @goal.save
        render json: @goal
    end

    private

    def goal_params
        params.require(:goal).permit(:goal_name, :goal_img, :goal_amount, :completed, :user_id)
    end

    def find_goal
        @goal = Goal.find_by(id: params[:id])
    end
end
