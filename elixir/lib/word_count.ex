defmodule WordCount do
  @moduledoc false

  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase()
    |> String.split(~r/[^[:alnum:]-]/u, trim: true)
    |> Enum.reduce(%{}, fn word, result ->
      Map.update(result, word, 1, fn value -> value + 1 end)
    end)
  end
end
