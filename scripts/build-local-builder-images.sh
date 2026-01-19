#!/bin/bash
# Build local omnibus builder images

set -e

cd "$(dirname "$0")/../docker/builder"

echo "Building Debian 12 builder image..."
docker build -t omnibus-builder:debian12 -f Dockerfile.debian12 .

echo "Building Debian 13 builder image..."
docker build -t omnibus-builder:debian13 -f Dockerfile.debian13          .

echo "Building Ubuntu 25.04 builder image..."
docker build -t omnibus-builder:ubuntu25 -f Dockerfile.ubuntu25 .

echo "All builder images built successfully!"
echo "Available images:"
docker images | grep omnibus-builder