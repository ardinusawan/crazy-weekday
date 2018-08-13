defmodule Bob do
	def hey(input) do
		chars = for n <- ?A..?Z, do: << n :: utf8 >>
		chars_rusia = for n <- ?А..?Я, do: << n :: utf8 >>
    cond do
			String.upcase(input) == input and (String.contains?(input, chars) or String.contains?(input, chars_rusia))->
					# If question too: Calm down, I know what I'm doing!
					if String.at(input, -1) == "?", do: "Calm down, I know what I'm doing!", else: "Whoa, chill out!"
					# else, "Whoa, chill out!"
			# If question->
			String.at(input, -1) == "?" ->
					# If yell and any string: Calm down, I know what I'm doing!
					if String.upcase(input) == input and String.contains?(input, chars), do: "Calm down, I know what I'm doing!", else: "Sure."
					# Else: Sure.
			# If yell and not question and any string ->
			String.upcase(input) == input and String.at(input, -1) != "?" and String.contains?(input, chars) ->
				# Whoa, chill out!
				"Whoa, chill out!"
			# If empty ->
				# "Fine. Be that way!"
			String.length(String.trim(input)) == 0 -> "Fine. Be that way!"
			true -> "Whatever."
    end
 end
end
