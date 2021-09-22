# frozen_string_literal: true

require "helper"

class TenderJIT
  class OptPlusTest < JITTest
    def add_lits
      1 + 2
    end

    def add_params a, b
      a + b
    end

    def add_lit_and_param a
      a + 2
    end

    def test_add_lits
      jit.compile method(:add_lits)
      assert_equal 1, jit.compiled_methods
      assert_equal 0, jit.executed_methods

      jit.enable!
      v = add_lits
      jit.disable!
      assert_equal 3, v

      assert_equal 1, jit.compiled_methods
      assert_equal 1, jit.executed_methods
      assert_equal 0, jit.exits
    end

    def test_add_params
      jit.compile method(:add_params)
      assert_equal 1, jit.compiled_methods
      assert_equal 0, jit.executed_methods

      jit.enable!
      v = add_params(1, 2)
      jit.disable!
      assert_equal 3, v

      assert_equal 1, jit.compiled_methods
      assert_equal 1, jit.executed_methods
      assert_equal 0, jit.exits
    end

    def test_add_lit_and_params
      jit.compile method(:add_lit_and_param)
      assert_equal 1, jit.compiled_methods
      assert_equal 0, jit.executed_methods

      jit.enable!
      v = add_lit_and_param(1)
      jit.disable!
      assert_equal 3, v

      assert_equal 1, jit.compiled_methods
      assert_equal 1, jit.executed_methods
      assert_equal 0, jit.exits
    end

    def test_add_strings_bails
      jit.compile method(:add_params)
      assert_equal 1, jit.compiled_methods
      assert_equal 0, jit.executed_methods

      jit.enable!
      v = add_params("foo", "bar")
      jit.disable!
      assert_equal "foobar", v

      assert_equal 1, jit.compiled_methods
      assert_equal 1, jit.executed_methods
      assert_equal 1, jit.exits
    end
  end
end
