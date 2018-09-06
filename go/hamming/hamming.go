package hamming

import (
	"fmt"
	"errors"
)

func Distance(a, b string) (int, error) {

	if len(a) != len(b) {
		return -1, errors.New(fmt.Sprintf("Distance(%d, %d). error is nil.", len(a), len(a)))
	}

	var diff = 0
	for i:=0;i<len(a);i++ {
		if a[i] != b[i] {
			diff++
		}
	}

	return diff, nil
}
