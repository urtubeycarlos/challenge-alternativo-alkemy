class CreateIconosGeograficos < ActiveRecord::Migration[6.1]
  def change
    create_table :iconos_geograficos do |t|
      t.string :imagen
      t.string :denominacion
      t.integer :altura
      t.text :historia

      t.timestamps
    end
  end
end
