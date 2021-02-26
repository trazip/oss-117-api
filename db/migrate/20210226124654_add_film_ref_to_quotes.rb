class AddFilmRefToQuotes < ActiveRecord::Migration[6.0]
  def change
    add_reference(:quotes, :film, foreign_key: true)
  end
end
