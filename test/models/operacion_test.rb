require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
  def setup
  	@operacion = operacions(:operacion_one)
  end


  test 'operacion has one trabajador' do
      assert_not_nil operacions(:operacion_one).trabajador
  end

  test 'operacion has one inventario' do 
  	assert_includes @operacion.inventario, inventarios(:one)
  end


end
