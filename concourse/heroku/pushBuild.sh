#!/bin/sh

set -e

setup() {
    export DIR="$PWD"
    export GITHUB_TOKEN="${github_token}"
    export HEROKU_API_KEY="${heroku_api_key}"
}

main() {
    cat  << EOF > /root/.netrc
      machine api.heroku.com
          login ${heroku_email}
          password ${heroku_api_token}
      machine git.heroku.com
          login ${heroku_email}
          password ${heroku_api_token}
EOF

    heroku container:login
    heroku container:push web
    heroku container:release web
    heroku open
}
main