# frozen_string_literal: true

require "test_helper"

class PrimarityTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::Primarity.const_defined?(:VERSION)
    end
  end


  test "check primarity with orthodocs method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_equal value.prime?, expect
    end
  end

  test "check primarity with undefined method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_raise UndefinedPrimarityTestMethod do
        value.prime?(method='undefined')
      end
    end
  end

  test "check primarity with fermat method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_equal value.prime?(method='fermat'), expect
    end
  end

  test "raise InvalidNumberError if it is 1 or less" do
    [[-1, true], [0, true], [1, true], [-11, false]].each do |value, expect|
      assert_raise InvalidNumberError do
        value.prime?
      end
    end
  end
end

