class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.integer :fighterone
      t.integer :fightertwo

      t.timestamps
    end

  end
end
