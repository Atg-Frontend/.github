#!/bin/bash

npm_name=$1
org_name=$1
feed_name=$2
auth_token=$3

echo "//pkgs.dev.azure.com/${npm_name}/_packaging/${feed_name}/npm/:_password = ${auth_token}" >> .npmrc
echo "//pkgs.dev.azure.com/${npm_name}/_packaging/${feed_name}/npm/:username = ${npm_name}" >> .npmrc
echo "//pkgs.dev.azure.com/${npm_name}/_packaging/${feed_name}/npm/registry/:_password = ${auth_token}" >> .npmrc
echo "//pkgs.dev.azure.com/${npm_name}/_packaging/${feed_name}/npm/registry/:username = ${npm_name}" >> .npmrc
