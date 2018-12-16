package raindrops

import (
	"strconv"
)

//Convert a number to a string, the contents of which depend on the number's factors
func Convert(input int) (string) {
	
	var result string
	if input % 3 == 0 {
		result += "Pling"
	}
	if input % 5 == 0{
		result += "Plang"

	}
	if input % 7 == 0 {
		result += "Plong"

	}
	if len(result) == 0 {
		result += strconv.Itoa(input)
	}
	return result	
}