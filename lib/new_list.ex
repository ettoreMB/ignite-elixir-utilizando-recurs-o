defmodule NewList do
  def call(list) do
    list
    |> Enum.flat_map(fn elmt -> parseNumber(elmt) end)
    |> count_odd()
  end

  defp parseNumber(element) do
    case Integer.parse(element) do
      {int, _rest} -> [int]
      :error -> []
    end
  end

  defp count_odd(element) do
    Enum.count(element, fn elmt -> rem(elmt, 2) == 1 end)
  end
end
