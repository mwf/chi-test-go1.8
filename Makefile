GOROOT?=$(shell go env GOROOT)

CHI_PATH:=./vendor/github.com/go-chi/chi

go:
	curl https://dl.google.com/go/go1.8.7.src.tar.gz --output go1.8.7.src.tar.gz
	tar -xjf go1.8.7.src.tar.gz

go/bin/go: go
	cd ./go/src && GOROOT_BOOTSTRAP=$(GOROOT) ./all.bash

get-chi:
ifeq ($(wildcard $(CHI_PATH)),)
	git clone https://github.com/mwf/chi $(CHI_PATH)
endif

run: go/bin/go get-chi
	./go/bin/go version
	GOROOT=$(CURDIR)/go ./go/bin/go run main.go
