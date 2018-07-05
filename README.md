# chi-test-go1.8
A project to test vgo-based chi with old go versions

## Requirements

You need to have any `go` to be installed in your system.

## Usage

Just run `make run`:

- go1.8.7 will be downloaded and installed from source
- https://github.com/mwf/chi with new Semver Import Paths and go.mod support will be installed at `/vendor/github.com/go-chi/chi`
- main.go is compiled and run

If all goes OK - it proofs that new versioning mechanism doesn't break current `go-chi` users.
