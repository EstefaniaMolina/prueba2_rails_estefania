class AddOperacionIdToInventario < ActiveRecord::Migration
  def change
    add_column :inventarios, :operacion_id, :integer
    add_index :inventarios, :operacion_id
  end
end
