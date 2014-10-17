class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.date :start_date
      t.date :finish_date

      t.timestamps
    end
  end
end
