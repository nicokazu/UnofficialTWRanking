class CreateTwors < ActiveRecord::Migration[6.0]
  def change
    create_table :twors do |t|
      t.integer :point
      t.string :total
      t.string :nomi
      t.string :kongo
      t.string :subete
      t.string :suuji
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
