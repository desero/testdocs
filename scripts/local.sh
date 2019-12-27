#!/bin/bash

VERSIONS_ARRAY=(
  'v1.0.0'
  'master'
  'v2.0.0'
  'v2.0.1'
)

joinVersions() {
	versions=$(printf ",%s" "${VERSIONS_ARRAY[@]}")
	echo "${versions:1}"
}

VERSION_STRING=$(joinVersions)

run() {
  export CURRENT_BRANCH="master"
  export CURRENT_VERSION=${VERSIONS_ARRAY[0]}
  export VERSIONS=${VERSION_STRING}

  HUGO_TITLE="Presslabs Docs - local" \
  VERSIONS=${VERSION_STRING} \
  CURRENT_BRANCH="master" \

  pushd $(dirname "$0")/.. > /dev/null

  popd > /dev/null

  CURRENT_VERSION=${CURRENT_VERSION} ~/go/bin/hugo server -s tmp --themesDir=../.. --disableFastRender
  # CURRENT_VERSION=${CURRENT_VERSION} ~/go/bin/hugo -s tmp --themesDir=../..
}

run
