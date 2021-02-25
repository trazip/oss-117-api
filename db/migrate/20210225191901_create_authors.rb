class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :fullname
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
