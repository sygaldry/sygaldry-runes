package runes

import (
	"fmt"

	"github.com/docker/docker/pkg/homedir"
	"github.com/sygaldry/sygaldry-core/runes"
)

// NewMavenRune creates a new Rune
func NewMavenRune(
	stages string,
	opts string,
	mavenHome string,
	mavenVersion string,
	imageRepository string,
) (runes.Rune, error) {
	if "" == imageRepository {
		imageRepository = "docker.io/sygaldry/maven-rune"
	}
	if "" == mavenVersion {
		mavenVersion = "latest"
	}
	if "" == mavenHome {
		mavenHome = homedir.Get()
	}
	return runes.NewRune(
		fmt.Sprintf("%s:%s", imageRepository, mavenVersion),
		[]string{
			fmt.Sprintf("\"opts=%s\"", opts),
			fmt.Sprintf("\"stages=%s\"", stages),
		},
		[]string{
			fmt.Sprintf("%s:/home/sygaldry/.m2", mavenHome),
		},
	)
}
