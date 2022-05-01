defmodule NewListTest do
  use ExUnit.Case

  describe "sumList/1" do
    list1 = ["1", "3", "6", "43", "banana", "6", "abc"]
    assert NewList.call(list1) == 3
  end
end
