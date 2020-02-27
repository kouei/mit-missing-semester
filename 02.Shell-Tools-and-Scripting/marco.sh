#!/usr/bin/env bash
saved=""
marco () {
    saved="$(pwd)"
}

polo () {
    cd "$saved" || exit
}