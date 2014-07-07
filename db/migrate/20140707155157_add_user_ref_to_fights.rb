class AddUserRefToFights < ActiveRecord::Migration
  def change
    add_reference :fights, :user, index: true
  end
end
