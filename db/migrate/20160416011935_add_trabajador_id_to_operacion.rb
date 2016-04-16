class AddTrabajadorIdToOperacion < ActiveRecord::Migration
  def change
    add_column :operacions, :trabajador_id, :integer
    add_index :operacions, :trabajador_id
  end
end
