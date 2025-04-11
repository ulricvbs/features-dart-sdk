#!/bin/sh
set -eux

BASEURL="https://storage.googleapis.com/dart-archive/channels"
DART_VER=$VERSION
export DEBIAN_FRONTEND="noninteractive"
apt update
apt install -y --no-install-recommends \
    curl \
    ca-certificates \
    unzip \
    xz-utils \
    zip \
    file

case "$(dpkg --print-architecture)" in
amd64)
    SDK_ARCH="x64"
    ;;
armhf)
    SDK_ARCH="arm"
    ;;
arm64)
    SDK_ARCH="arm64"
    ;;
esac

SDK="dartsdk-linux-${SDK_ARCH}-release.zip"
URL="$BASEURL/stable/release/${DART_VER}/sdk/$SDK"
DART_SDK_SHA256="$SDK.sha256sum"
CHECKSUM_URL="$BASEURL/stable/release/${DART_VER}/sdk/$DART_SDK_SHA256"
curl -fLO "$URL"
curl -fLO "$CHECKSUM_URL"
cat $DART_SDK_SHA256 | sha256sum --check --status --strict -
unzip "$SDK"
mv dart-sdk "$DART_ROOT"
rm "$SDK"
chmod 755 "$DART_ROOT"
chmod 755 "$DART_ROOT/bin"
