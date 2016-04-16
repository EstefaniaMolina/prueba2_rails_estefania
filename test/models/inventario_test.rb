require 'test_helper'

class InventarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'inventario has one operacion' do
  	assert_not_nil inventarios(:one).operacion
  end

  test 'delete operacion when inventario is deleted' do
  	@inventario.destroy
  	assert_empty Operacion.where(inventario_id: @inventario.id)
  end
end
