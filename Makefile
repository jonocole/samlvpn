.PHONY: patch

GOFILES += main.go
GOFILES += config.go
GOFILES += server.go

bin: $(GOFILES)
	go build -o bin/samlvpn $(GOFILES)

install: $(GOFILES)
	go install

clean:
	rm -rf bin

patch:
	git apply --directory openvpn openvpn-v2.4.9.diff

