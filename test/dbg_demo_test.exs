defmodule DbgDemoTest do
  use ExUnit.Case
  doctest DbgDemo

  test "calculates the square of a number" do
    assert DbgDemo.square(0) == 0
    assert DbgDemo.square(1) == 1
    assert DbgDemo.square(2) == 4
    assert DbgDemo.square(3) == 9
    assert DbgDemo.square(4) == 16
    assert DbgDemo.square(5) == 25
  end
end
