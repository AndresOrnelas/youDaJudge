class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
    	t.integer :r1_f1
    	t.integer :r2_f1
    	t.integer :r3_f1

    	t.integer :r1_f2
    	t.integer :r2_f2
    	t.integer :r3_f2

    	t.integer :user_id
    	t.integer :fight_id

      t.timestamps
    end
  end
end
