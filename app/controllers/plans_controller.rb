class PlansController < ApplicationController
  def index
    @categories = Category.all
    category_id = params[:category_id].presence || Category.featured
    @plans = Plan.filter_by_category(category_id)
  end

  def filter
    @plans = Plan.filter_by_category(params[:category_id])
    respond_to do |format|
      format.html { redirect_to plans_path }
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace('plans', partial: 'plans/plans', locals: { plans: @plans })
      end
    end
  end
end
