class AddPaisesToContinentes < ActiveRecord::Migration[6.1]
  def change
    add_reference :paises, :continente, foreign_key: true, index: true, null: false
  end
end
