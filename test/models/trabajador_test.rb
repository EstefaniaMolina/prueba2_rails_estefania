require 'test_helper'

class TrabajadorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'trabajadors without name must be invalid' do
  	trabajador = Trabajador.new nombre:nil
  	assert_not trabajador.valid?
  end
end
