#!/bin/env bash

for f in *.jpg; do mv "$f" "$(echo "$f" | sed s/from/to/)"; done
