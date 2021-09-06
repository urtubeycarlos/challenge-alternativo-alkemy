class CreatePaises < ActiveRecord::Migration[6.1]
  def change
    create_table :paises do |t|
      t.string :imagen
      t.string :denominacion
      t.integer :cantHabitantes
      t.integer :superficie

      t.timestamps
    end
  end
end
