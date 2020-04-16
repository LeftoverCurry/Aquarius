class AddUserRefToGardens < ActiveRecord::Migration[6.0]
  def change
    add_reference :gardens, :user, null: false, foreign_key: true
  end
end
