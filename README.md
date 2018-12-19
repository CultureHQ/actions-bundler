# GitHub Actions for bundler

This Action for [bundler](https://bundler.io/) enables arbitrary actions with the `bundler` command-line client. Uses the `ruby:2.5.3` docker image as its base.

## Usage

An example workflow to lint and test:

```hcl
workflow "Main" {
  on = "push"
  resolves = ["Lint", "Test"]
}

action "Install" {
  uses = "docker://culturehq/actions-bundler:latest"
  args = "install"
}

action "Lint" {
  needs = "Install"
  uses = "docker://culturehq/actions-bundler:latest"
  args = "exec rubocop"
}

action "Test" {
  needs = "Install"
  uses = "docker://culturehq/actions-bundler:latest"
  args = "exec rake"
}
```
