target "docker-metadata-action" {}

variable "APP" {
  default = "init-base"
}

variable "VERSION" {
  // renovate: datasource=docker depName=docker.io/library/alpine versioning=docker
  default = "3.23"
}

variable "SOURCE" {
  default = "https://github.com/alpinelinux/docker-alpine"
}

group "default" {
  targets = ["image-local"]
}

target "image" {
  inherits = ["docker-metadata-action"]
  args = {
    VERSION = "${VERSION}"
  }
  labels = {
    "org.opencontainers.image.source" = "${SOURCE}"
  }
}

target "image-local" {
  inherits = ["image"]
  output = ["type=docker"]
  tags = ["${APP}:alpine-${VERSION}"]
}

target "image-all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}