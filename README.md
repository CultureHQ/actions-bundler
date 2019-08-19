# GitHub Actions for bundler

[![Build Status](https://github.com/CultureHQ/actions-bundler/workflows/Push/badge.svg)](https://github.com/CultureHQ/actions-bundler/actions)
This Action for [bundler](https://bundler.io/) enables arbitrary actions with the `bundler` command-line client. Uses the `ruby:2.6.3` docker image as its base.

## Usage

An example workflow to lint and test:

```hcl
workflow "Main" {
  on = "push"
  resolves = ["Lint", "Test"]
}

action "Install" {
  uses = "CultureHQ/actions-bundler@master"
  args = "install"
}

action "Lint" {
  needs = "Install"
  uses = "CultureHQ/actions-bundler@master"
  args = "exec rubocop"
}

action "Test" {
  needs = "Install"
  uses = "CultureHQ/actions-bundler@master"
  args = "exec rake"
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CultureHQ/actions-bundler.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
