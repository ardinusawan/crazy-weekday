defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    sentence
    |> String.downcase
    |> String.replace(~r/[~%&\\;:"',<>?#!"@$"_^\s]+/, " ")
    |> String.split
    |> count_map
    # map = for atom <- clean_sentence, into: %{}, do: {String.to_atom(atom), Enum.count(split, &(&1 == atom))}
    # Map.new(clean_sentence, fn x -> {x, Enum.count(clean_sentence, &(&1 == x))} end)
  end

  def count_map(words) when is_list(words) do
    Enum.reduce(words, %{}, &update_count/2)
  end

  def update_count(word, acc) do
    Map.update(acc, word, 1, &(&1 + 1))
  end
end
