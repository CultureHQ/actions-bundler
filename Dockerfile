FROM ruby:2.5.3

LABEL version="1.0.0"
LABEL repository="http://github.com/CultureHQ/actions-bundler"
LABEL homepage="http://github.com/CultureHQ/actions-bundler"
LABEL maintainer="CultureHQ <support@culturehq.com>"

LABEL com.github.actions.name="GitHub Action for bundler"
LABEL com.github.actions.description="Wraps the bundler CLI to enable common bundler commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md /

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
