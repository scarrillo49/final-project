class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.date :birth_date
      t.decimal :weight

      t.timestamps
    end
  end
end
