#!/bin/bash
saved=""
marco () {
    saved="$(pwd)"
}

polo () {
    cd "$saved" || exit
}