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

TARGET="https://github.com/retrogradeorbit/bootleg/releases/download/v${VERSION}/bootleg-${VERSION}-windows-amd64.zip"

CHECKVER_CODE=`curl -X HEAD -m 3 -sfw "%{response_code}" ${TARGET}`
if [ $CHECKVER_CODE -ne 302 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

SHA256SUM=$(curl -sLS --fail-early "${TARGET}" | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "description": "Simple template processing command line tool to help build static websites",
    "homepage": "https://github.com/retrogradeorbit/bootleg",
    "license": "EPL-2.0",
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
    "bin": "bootleg.exe"
}

MANIFEST
