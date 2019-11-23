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

TARGET="https://github.com/borkdude/clj-kondo/releases/download/v${VERSION}/clj-kondo-${VERSION}-windows-amd64.zip"

CHECKVER_CODE=`curl -X HEAD -m 3 -sfw "%{response_code}" ${TARGET}`
if [ $CHECKVER_CODE -ne 302 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

SHA256SUM=$(curl -sLS --fail-early "${TARGET}" | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "description": "A linter for Clojure code that sparks joy",
    "homepage": "https://github.com/borkdude/clj-kondo",
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
        "url": "https://github.com/borkdude/clj-kondo/releases/download/v\$version/clj-kondo-\$version-win-amd64.zip"
    },
    "bin": "clj-kondo.exe"
}

MANIFEST
