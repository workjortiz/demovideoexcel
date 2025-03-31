class CreateCarros < ActiveRecord::Migration[7.2]
  def change
    create_table :carros do |t|
      t.string :descripcion
      t.string :color
      t.integer :puertas

      t.timestamps
    end
  end
end
