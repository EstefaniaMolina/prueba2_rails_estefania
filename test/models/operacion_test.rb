require 'test_helper'

class OperacionTest < ActiveSupport::TestCase
  test 'operacion has one trabajador' do
      assert_not_nil operacions(:one).trabajador
  end
end
