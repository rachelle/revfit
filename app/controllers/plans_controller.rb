class PlansController < ApplicationController
  
  def index 
    @plans = Plan.all 
  end

  def new 
    @plan = Plan.new 
  end

  def create 
    @plan = Plan.create!(params[:plan])
    redirect_to plans_url 
  end 

  def update 
    @plan = Plan.find(params[:id])
    @plan.update_attributes!(params[:plan])
    redirect_to plans_url 
  end 

  def destroy 
    @plan = Plan.destroy(params[:id])
    redirect_to plans_url 
  end 
  
end