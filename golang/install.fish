#!/usr/bin/env fish
set -Ux GOPATH $PROJECTS/go
set -Ua fish_user_paths $GOPATH/bin /usr/local/go/bin

if command -qs go
	go install github.com/go-delve/delve/cmd/dlv@latest
end
