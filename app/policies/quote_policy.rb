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
    record.user == user
  end

  def random?
    true
  end
end
