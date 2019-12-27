#!/usr/bin/env bash
VERSION=$1

# check presence of version
if [ -z $VERSION ]; then
	echo "Missing argument with version" >&2
	exit 1
fi 

# check presence of tooling
SHASUM=`which shasum`
CURL=`which curl`
[ -n ${SHASUM} ] && [ -n ${CURL} ] || exit 2

TARGET="https://github.com/borkdude/deps.clj/releases/download/v${VERSION}/deps.clj-${VERSION}-windows-amd64.zip"

CHECKVER_CODE=`curl -X HEAD -m 3 -sfw "%{response_code}" ${TARGET}`
if [ $CHECKVER_CODE -ne 302 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

SHA256SUM=$(curl -sLS --fail-early "${TARGET}" | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "description": "A port of the clojure bash script to Clojure",
    "homepage": "https://github.com/borkdude/deps.clj",
    "license": "EPL-1.0",
    "version": "${VERSION}",
    "architecture": {
        "64bit": {
            "url": "${TARGET}",
            "hash": "${SHA256SUM}"
        }
    },
    "checkver": "github",
    "autoupdate": {
        "url": "https://github.com/borkdude/deps.clj/releases/download/v\$version/deps.clj-\$version-windows-amd64.zip"
    },
    "bin": "deps.exe"
}

MANIFEST
