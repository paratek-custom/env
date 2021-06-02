#!/bin/bash


if [ ! -n "$GITHUB_TOKEN" ]; then
  echo "there is no var GITHUB_TOKEN"
else
    git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
fi

/bin/bash