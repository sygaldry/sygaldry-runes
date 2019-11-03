package runes_test

import (
	"github.com/sygaldry/sygaldry-runes/runes"
	"os"
	"path/filepath"
	"testing"
)

// TestRuneRun tests rune.Run
func TestRuneRun(t *testing.T) {
	workingDir, _ := os.Getwd()
	projectDir := filepath.Dir(workingDir)
	err := os.Chdir(filepath.Join(projectDir, "test_resources/maven_project"))
	if err != nil {
		panic(err)
	}
	mavenRune, error := runes.NewMavenRune(
		"clean install",
		"",
		"",
		"3.2.5-jdk-8",
		"",
		)
	if error != nil {
		t.Error("Expected to create maven Rune, got", error)
	}
	if error := mavenRune.Run(); error != nil {
		t.Error("Expected success, got ", error)
	}

	err = os.Chdir(filepath.Join(workingDir))
	if err != nil {
		panic(err)
	}
}