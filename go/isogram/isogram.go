package isogram

import (
	"unicode"
)

var maps map[rune]int

func IsIsogram(input string) bool {
    maps = make(map[rune]int)
    for _, r := range input {
        var char = unicode.ToUpper(r)

        if maps[char] > 0 {
            return false
        }

        if char >= 65 && char <= 90{
            maps[char] = maps[char] + 1
        }
    }
    return true
}
