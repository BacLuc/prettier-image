# Prettier Docker Image

A Docker image for running Prettier with .gitignore support.

## Features

- **Gitignore Support**: Respects .gitignore patterns
- **Flexible Arguments**: Pass any prettier arguments

## Usage

```bash
# Format all files in current directory
docker compose run --rm prettier

# Format specific files
docker compose run --rm prettier --write 'test-files/**/*.js'

# Check formatting
docker compose run --rm prettier --check '**/*.js'
```

## Test Files

The `test-files/` directory contains sample files for testing.

## Auto-Updates

Renovate bot automatically updates Prettier to the latest version.
