class Quote < ApplicationRecord
  belongs_to :author
  belongs_to :film
  belongs_to :user

  def self.random
    order("RANDOM()").first
  end
end
