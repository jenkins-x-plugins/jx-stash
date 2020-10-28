package tap

import (
	"regexp"
	"strings"
)

type Error struct {
	Status      string
	StatusStyle string
	File        string
	Line        string
	Col         string
	Heading     string
	Message     string
}

var (
	fileLineColRegex = regexp.MustCompile(`([^<>:;,?\"*|/]+)\s+(\d+)\s+(\d+)\s+(.*)`)
	fileLineRegex    = regexp.MustCompile(`([^<>:;,?\"*|/]+)\s+(\d+)\s+(.*)`)
)

// ParseErrors parsers the errors from a message
func ParseErrors(text string) ([]*Error, error) {
	var answer []*Error
	lines := strings.Split(text, "\n")
	buf := strings.Builder{}

	var lastError *Error
	for _, line := range lines {
		var e *Error
		matches := fileLineColRegex.FindStringSubmatch(line)
		if len(matches) > 0 {
			e = &Error{
				File:    matches[1],
				Line:    matches[2],
				Col:     matches[3],
				Heading: matches[4],
			}
		} else {
			matches := fileLineRegex.FindStringSubmatch(line)
			if len(matches) > 0 {
				e = &Error{
					File:    matches[1],
					Line:    matches[2],
					Heading: matches[3],
				}
			}
		}
		if e == nil {
			buf.WriteString(line)
			buf.WriteString("\n")
			continue
		}

		if buf.Len() > 0 {
			if lastError == nil {
				lastError = &Error{}
				answer = append(answer, lastError)
			}

			// lets keep the old buffer
			lastError.Message = buf.String()
		}
		answer = append(answer, e)
		lastError = e
	}
	return answer, nil
}
