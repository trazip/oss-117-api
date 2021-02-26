class Api::V1::QuotesController < Api::V1::BaseController
  # before_action, :set_quote, only: [:random, :show]

  def index
    @quotes = policy_scope(Quote)
  end

  def random
    @quote = Quote.random
    render :show
    authorize @quote
  end

  def show
  end

  private 

  # def set_quote
  #   @quote = Quote.find(params[:id])
  # end
end
