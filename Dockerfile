FROM ruby:2.6.3

LABEL version="2.0.2"
LABEL repository="http://github.com/CultureHQ/actions-bundler"
LABEL homepage="http://github.com/CultureHQ/actions-bundler"
LABEL maintainer="CultureHQ <support@culturehq.com>"

LABEL com.github.actions.name="GitHub Action for bundler"
LABEL com.github.actions.description="Wraps the bundler CLI to enable common bundler commands."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"

ENV GEM_HOME="/usr/local/bundle"
ENV PATH=$GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

RUN gem update --system
RUN gem install bundler -v "2.0.1"

COPY LICENSE README.md /
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
