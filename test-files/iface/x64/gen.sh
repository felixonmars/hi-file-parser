#!/usr/bin/env bash

set -euxo pipefail

for version in 8.6.5 8.8.2 8.10.1
do
    rm -rf ghc-$version
    mkdir -p ghc-$version
    stack --resolver ghc-$version exec -- ghc -hidir ghc-$version Main.hs
    rm *.o
    rm Main
done
