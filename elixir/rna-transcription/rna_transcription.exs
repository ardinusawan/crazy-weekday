defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    mapping = %{?A => ?U, ?C => ?G, ?T => ?A, ?G => ?C}
    translate = fn x -> mapping[x] end
    for char <- dna, do: translate.(char)
  end


end
