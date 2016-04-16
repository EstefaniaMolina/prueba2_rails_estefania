class CreateInventarios < ActiveRecord::Migration
  def change
    create_table :inventarios do |t|
      t.integer :numSerie
      t.integer :tamaño
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
