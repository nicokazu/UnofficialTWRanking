class CreateTwjrs < ActiveRecord::Migration[6.0]
  def change
    create_table :twjrs do |t|
      t.integer :point
      t.string :total
      t.string :joyo
      t.string :katakana
      t.string :kanji
      t.string :kankoto
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
