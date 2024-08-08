class CategoryPlansController < ApplicationController
  def show
    @plans = Plan.where(category_id: params[:id])
  end
end
