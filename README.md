# AWS SSM Buildkite Plugin

Inject SSM Parameters as environment variables into your build step.

## Example

Add the following to your `pipeline.yml`:

```yml
steps:
  - command: echo "Param One equals \$PARAMETER_ONE"
    plugins:
      - zacharymctague/aws-ssm:
          parameters:
            PARAMETER_ONE: /my/parameter
            PARAMETER_TWO: /my/other/parameter
```

## Configuration

### `parameters` (Required, object)

- Specify a list of `key: value` pairs to inject as environment variables

## Developing

To run the tests:

```shell
docker-compose run --rm tests
```

## Contributing

1. Fork the repo
2. Make the changes
3. Run the tests
4. Commit and push your changes
5. Send a pull request
