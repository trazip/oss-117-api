class QuotePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show? 
    true
  end

  def update? 
    true
  end

  def random?
    true
  end
end
