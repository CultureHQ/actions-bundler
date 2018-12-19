#!/usr/bin/env bats

PATH="$PATH:$BATS_TEST_DIRNAME/bin"

function setup() {
  # Ensure WORKSPACE is set
  export WORKSPACE="${WORKSPACE-"${BATS_TEST_DIRNAME}/.."}"
}

@test "entrypoint runs successfully" {
  run $WORKSPACE/entrypoint.sh help
  echo "$output"
  [ "$status" -eq 0 ]
}
