#!/usr/bin/env bats

load '/usr/local/lib/bats/load.bash'

# Uncomment to enable stub debugging
# export AWS_STUB_DEBUG=/dev/tty

@test "Exports parameters from SSM Store" {
    export BUILDKITE_PLUGIN_AWS_PARAMETERS_PARAMETER_ONE=/my/parameter

    stub aws "ssm : echo MY_PARAM_VALUE"

    run "$PWD/hooks/pre-command"

    assert_output --partial "Exported PARAMETER_ONE as value of parameter /my/parameter"

    assert_success

    unstub aws
}