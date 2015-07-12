#!/usr/bin/env bash

cd "$(dirname "$0")"

test -e build || mkdir build

$1/scripting/spcomp src/tf2-dogfight.sp -obuild/tf2-dogfight.smx
