# frozen_string_literal: true

require "test_helper"
require "fishy_utils"

class TestFishyUtils < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::FishyUtils::VERSION
  end

  def test_is_any_checks_classes_correctly
    obj1 = 4
    obj2 = "A string"
    obj3 = :foo

    assert obj1.is_any?(Integer, String)
    assert obj2.is_any?(Integer, String)
    refute obj3.is_any?(Integer, String)
  end
end
