target "docker-metadata-action" {}

variable "APP" {
  default = "archon"
}

variable "VERSION" {
  // renovate: datasource=docker depName=ghcr.io/coleam00/Archon
  default = "0.3.10"
}

variable "SOURCE" {
  default = "https://github.com/coleam00/Archon"
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
  tags = ["${APP}:${VERSION}"]
}

target "image-all" {
  inherits = ["image"]
  platforms = [
    "linux/amd64",
    "linux/arm64"
  ]
}
