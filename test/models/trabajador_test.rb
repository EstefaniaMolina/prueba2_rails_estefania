require 'test_helper'

class TrabajadorTest < ActiveSupport::TestCase
  def setup
      @trabajador = trabajadors(:trabajador_one)
  end
  
  test 'trabajador without name must be invalid' do 
      trabajador = Trabajador.new nombre:nil
      assert_not trabajador.valid?
  end
 
  test 'trabajador has many operaciones' do
      assert_includes @trabajador.operacions, operacions(:operacion_one)
  end

  test 'delete operacions when trabajador is deleted' do
  	@trabajador.destroy
  	assert_empty Operacion.where(trabajador_id: @trabajador.id)
  end
  
end
