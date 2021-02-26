class Author < ApplicationRecord
  belongs_to :user
  has_many :quotes, dependent: :destroy
end
