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

TARGET="https://github.com/candid82/joker/releases/download/v${VERSION}/joker-${VERSION}-win-amd64.zip"

CHECKVER_CODE=`curl -X HEAD -m 3 -sfw "%{response_code}" ${TARGET}`
if [ $CHECKVER_CODE -ne 302 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

SHA256SUM=$(curl -sLS --fail-early "${TARGET}" | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "homepage": "https://joker-lang.org",
    "description": "Joker is a small interpreted dialect of Clojure written in Go. It is also a Clojure(Script) linter",
    "version": "${VERSION}",
    "license": "EPL-1.0",
    "architecture": {
        "64bit": {
            "url": "${TARGET}",
            "hash": "${SHA256SUM}",
        }
    },
    "bin": "joker.exe",
    "checkver": "github",
    "autoupdate": {
        "url": "https://github.com/candid82/joker/releases/download/v\$version/joker-\$version-win-amd64.zip"
    }
}

MANIFEST
