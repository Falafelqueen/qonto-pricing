class PlansController < ApplicationController
  def index
    @categories = Category.all
    category = params[:category_id].presence || Category.featured

    @plans = Plan.filter_by_category(category)
  end

  def show
    @plan = Plan.find(params[:id])
  end

  def filter
    @plans = Plan.filter_by_category(params[:category_id])
    respond_to do |format|
      format.html { redirect_to plans_path(category_id: params[:category_id]) }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('plans', partial: 'plans/plans', locals: { plans: @plans })
      end
    end
  end
end
