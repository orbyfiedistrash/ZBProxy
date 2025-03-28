#!/bin/sh

export GOOS=linux
export GOARCH=arm64
export GOARM=7
export CGO_ENABLED=1
export BUILD_NAME=zbproxy

echo [+++] Config: OS($GOOS) ARCH($GOARCH) ARM($GOARM) CGO($CGO_ENABLED) NAME($BUILD_NAME)

go build -v -trimpath -ldflags '-s -w -buildid=' -o $BUILD_NAME ./cmd/zbproxy