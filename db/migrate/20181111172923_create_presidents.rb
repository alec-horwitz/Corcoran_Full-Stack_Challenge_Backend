class CreatePresidents < ActiveRecord::Migration[5.2]
  def change
    create_table :presidents do |t|
      t.string :name
      t.string :birthday
      t.string :birthplace
      t.string :deathday
      t.string :deathplace

      t.timestamps
    end
  end
end
