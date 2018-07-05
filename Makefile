GOOS?=$(shell go env GOOS)
GOARCH?=$(shell go env GOARCH)

TAR_NAME:=go1.8.7.$(GOOS)-$(GOARCH).tar.gz

CHI_PATH:=./vendor/github.com/go-chi/chi

go:
	curl https://dl.google.com/go/$(TAR_NAME) --output $(TAR_NAME)
	tar -xf $(TAR_NAME)

get-chi:
ifeq ($(wildcard $(CHI_PATH)),)
	git clone https://github.com/mwf/chi $(CHI_PATH)
endif

run: go get-chi
	./go/bin/go version
	GOROOT=$(CURDIR)/go ./go/bin/go run main.go
