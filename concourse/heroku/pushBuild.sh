#!/bin/sh

set -e

#setup() {
#    export DIR="$PWD"
#    export GITHUB_TOKEN="${github_token}"
#    export HEROKU_API_KEY="${heroku_api_key}"
#    export HEROKU_PROVIDER="${heroku_api_key}"
#}

main() {
    cat  << EOF > /root/.netrc
      machine api.heroku.com
          login ${heroku_provider}
          password ${heroku_api_key}
      machine git.heroku.com
          login ${heroku_provider}
          password ${heroku_api_key}
EOF

    heroku container:login
    heroku container:push web
    heroku container:release web -a ${heroku_app_name}
}
main