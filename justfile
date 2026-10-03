# probe-min — task runner.
# `just health` is the single entry point for repository state.
set shell := ["bash", "-euo", "pipefail", "-c"]

# Report the four-state module manifest.
health:
    scripts/health.sh

# Run every local check before pushing.
check: health

# List available recipes.
default:
    @just --list
