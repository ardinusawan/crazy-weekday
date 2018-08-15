defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    clean_sentence = String.downcase(sentence) |> String.replace(~r/[~%&\\;:"',<>?#!"@$"_^\s]+/, " ") |> String.split
    # map = for atom <- clean_sentence, into: %{}, do: {String.to_atom(atom), Enum.count(split, &(&1 == atom))}
    Map.new(clean_sentence, fn x -> {x, Enum.count(clean_sentence, &(&1 == x))} end)
  end
end
