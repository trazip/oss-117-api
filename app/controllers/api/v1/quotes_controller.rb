class Api::V1::QuotesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show, :random ]
  before_action :set_quote, only: [ :show, :update ]

  def index
    if params[:n]
      @quotes = policy_scope(Quote).shuffle.take(params[:n].to_i)
    elsif params[:opus] == "1"
      @quotes = policy_scope(Quote).where(film_id: Film.first.id)
    elsif params[:opus] == "2"
      @quotes = policy_scope(Quote).where(film_id: Film.last.id)
    else
      @quotes = policy_scope(Quote).shuffle
    end 
  end

  def update
    if @quote.update(quote_params)
      render :show
    else
      render_error
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

  def quote_params
    params.require(:quote).permit(:content, :film_id, :author_id)
  end

  def render_error
    render json: { errors: @quote.errors.full_messages },
      status: :unprocessable_entity
  end
end
