class CreateSanganos < ActiveRecord::Migration
  def change
    create_table :sanganos do |t|
      t.string :name
      t.string :apellido
      t.text :descripcion

      t.timestamps
    end
  end
end
