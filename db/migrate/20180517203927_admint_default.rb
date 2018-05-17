class AdmintDefault < ActiveRecord::Migration[5.2]
  def change

    User.first.update_column(:admin, true)

  end
end
