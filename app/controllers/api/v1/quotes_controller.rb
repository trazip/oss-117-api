class Api::V1::QuotesController < Api::V1::BaseController
  def index
    @quotes = policy_scope(Quotes)
  end
end
