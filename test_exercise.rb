require_relative "exercise"
require "test/unit"

class TestExercise < Test::Unit::TestCase
  test 'exercise base test' do
    assert_equal([12, 9, 2, 1].sort, Exercise.new(24).calc_sum(12, 1, 61, 5, 9, 2))
  end

  test 'test exercise' do
    assert_equal([12, 9, 2, 1].sort, Exercise.new(24).calc_sum(12, 1, 61, 5, 9, 2))
  end

  test 'test exercise with no results' do
    assert_equal([], Exercise.new(24000).calc_sum(12, 1, 61, 5, 9, 2))
  end
end
