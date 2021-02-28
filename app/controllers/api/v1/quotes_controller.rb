class Api::V1::QuotesController < Api::V1::BaseController
  before_action :set_quote, only: [ :show ]

  def index
    if params[:n]
      @quotes = policy_scope(Quote).shuffle.take(params[:n].to_i)
    else 
      @quotes = policy_scope(Quote).shuffle
    end
    
  end

  def random
    @quote = Quote.random
    render :show
    authorize @quote
  end

  def show
  end

  private 

  def set_quote
    @quote = Quote.find(params[:id])
    authorize @quote
  end
end
