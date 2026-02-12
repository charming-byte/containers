package main

import (
	"context"
	"testing"

	"github.com/home-operations/containers/testhelpers"
)

func Test(t *testing.T) {
	ctx := context.Background()
	image := testhelpers.GetTestImage("ghcr.io/charming-byte/init-base:alpine-3.23")
	testhelpers.TestCommandSucceeds(t, ctx, image, nil, "/usr/bin/bash")
}