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

TARGET="https://ci.appveyor.com/api/buildjobs/u69snl7lmta541mu/artifacts/babashka-${VERSION}-SNAPSHOT-windows-amd64.zip"

SHA256SUM=$(curl -sLS --fail-early "${TARGET}" | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "description": "A Clojure babushka for the grey areas of Bash",
    "homepage": "https://github.com/borkdude/babashka",
    "license": "EPL-1.0",
    "version": "${VERSION}",
    "architecture": {
        "64bit": {
            "url": "${TARGET}",
            "hash": "${SHA256SUM}"
        }
    },
    "suggest": {
        "Visual C/C++ Redistributable 2010": "extras/vcredist2010"
    },
    "bin": "bb.exe"
}

MANIFEST
