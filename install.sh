#!/bin/bash

set -euo pipefail

VERSION=1.0
NAME="xcode-snippets-${VERSION}"
DOWNLOAD_URI=https://github.com/artemnovichkov/xcode-snippets/archive/${VERSION}.tar.gz
DIR="${HOME}/Library/Developer/Xcode/UserData/CodeSnippets"

mkdir -p "${DIR}"
curl -L $DOWNLOAD_URI | tar xvz -C "${DIR}"
cp -r "${DIR}/${NAME}/Snippets/" "${DIR}"
