class TodosController < ApplicationController
    def index
        @tasks = Todo.all
        @task = Todo.new
    end

    def create
        @task = Todo.create(task_param)
        redirect_to root_path
    end

    def edit
        @task = Todo.find(params[:id])
    end

    def update
        @task = Todo.find(params[:id])
        @task.update(task_param)
        redirect_to root_path
    end

    def destroy
        @task = Todo.find(params[:id])
        @task.destroy
        redirect_to root_path
    end

    private
        def task_param
            params.require(:todo).permit(:state, :task, :limit_date)
        end
end
