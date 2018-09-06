defmodule Bob do
	def hey(input) do
    cond do
				silence?(input) -> "Fine. Be that way!"
				question_and_caps?(input) -> "Calm down, I know what I'm doing!"
				shouting?(input) -> "Whoa, chill out!"
				question?(input) -> "Sure."
				true -> "Whatever."
		end
 end
 defp silence?(input) do
		String.length(String.trim(input)) == 0
 end

 defp shouting?(input) do
		String.upcase(input) == input and String.downcase(input) != input
 end

 defp question_and_caps?(input) do
		String.at(input, -1) == "?" and String.upcase(input) == input and String.downcase(input) != input
 end

 defp question?(input) do
	 String.at(input, -1) == "?"
 end
end
