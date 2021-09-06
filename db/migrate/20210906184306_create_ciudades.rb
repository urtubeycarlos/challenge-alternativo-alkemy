class CreateCiudades < ActiveRecord::Migration[6.1]
  def change
    create_table :ciudades do |t|
      t.string :imagen
      t.string :denominacion
      t.integer :cantHabitantes
      t.integer :superficie

      t.timestamps
    end
  end
end
