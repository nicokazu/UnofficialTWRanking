class CreateTwews < ActiveRecord::Migration[6.0]
  def change
    create_table :twews do |t|
      t.integer :point
      t.string :total
      t.string :kihon
      t.string :af
      t.string :gp
      t.string :qz
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
