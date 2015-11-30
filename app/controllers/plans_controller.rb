class PlansController < ApplicationController
  before_action :all_plans, only: [:index, :create, :update]
  before_action :set_plans, only: [:edit, :update]
  respond_to :html, :js

  def index
    @plans = Plans.all 

    respond_to do |format| 
      format.html 
      format.json
    end
  end

  def new 
    @plan = Plan.new
  end

  def create
    @plan = Plan.create(plan_params)
  end

  def update
    @plan.update_attributes(plan_params)
  end

  def show
  end

  def destroy
    @plan.destroy 
  end

  private 

    def all_plans 
      @plans = Plans.all 
    end

    def set_plans 
      @plan = Plan.find(params[:id])
    end

    def plans_params
      params.require(:plan).permit(:description)
    end 
  
end
