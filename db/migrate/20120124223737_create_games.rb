class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :played
      t.integer :t1_p1
      t.integer :t1_p2
      t.integer :t1_points
      t.integer :t2_p1
      t.integer :t2_p2
      t.integer :t2_points

      t.timestamps
    end
  end
end
