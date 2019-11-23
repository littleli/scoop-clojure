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

RE='win-install-(\\d+\\.\\d+\\.\\d+\\.\\d+).ps1'

CHECKVER_CODE=`curl -X HEAD -sfw "%{response_code}" https://download.clojure.org/install/clojure-tools-${VERSION}.zip`
if [ $CHECKVER_CODE -ne 200 ]; then
	echo "Version ${VERSION} does not exist" >&2
	exit 3
fi

SHA256SUM=$(curl -sS --fail-early https://download.clojure.org/install/clojure-tools-${VERSION}.zip | shasum -a 256 -b | cut -f1 -d\ )

cat <<MANIFEST  
{
    "homepage": "https://clojure.org",
    "description": "Clojure is a modern, dynamic, and functional dialect of the Lisp programming language on the Java platform",
    "version": "$VERSION",
    "license": "EPL-1.0",
    "url": "https://download.clojure.org/install/clojure-tools-${VERSION}.zip",
    "hash": "${SHA256SUM}",
    "extract_dir": "ClojureTools",
    "psmodule": {
        "name": "ClojureTools"
    },
    "suggest": {
        "JDK": [
            "java/adopt8-hotspot",
            "java/adoptopenjdk-lts-hotspot",
            "java/oraclejdk",
            "java/openjdk"
        ]
    },
    "checkver": {
        "url": "https://github.com/clojure/tools.deps.alpha/wiki/clj-on-Windows",
        "re": "${RE}"
    },
    "autoupdate": {
        "url": "https://download.clojure.org/install/clojure-tools-\$version.zip"
    }
}

MANIFEST
