#!/usr/bin/env bash
#
# Serve the site at http://localhost:4000 with live reload.
#
# Jekyll reads _config.yml only once, at startup, so edits to it are normally invisible
# until you restart the server by hand. This script watches that one file and restarts
# Jekyll for you, so *every* change -- content or config -- shows up on a browser reload.
#
# Content files (_pages, _posts, _sass, ...) don't need this: Jekyll's own watcher picks
# them up and LiveReload refreshes the browser tab automatically.
#
# Usage:  ./scripts/serve.sh     (press Ctrl-C to stop)
#
# Note: uses `stat -f` (BSD/macOS syntax). On Linux, change it to `stat -c %Y`.

set -euo pipefail

cd "$(dirname "$0")/.."

# This site cannot be built with Ruby 4.x -- see the "Running locally" note in README.md.
# Homebrew keeps ruby@3.3 keg-only, so it has to be put on PATH explicitly.
export PATH="/opt/homebrew/opt/ruby@3.3/bin:$PATH"

jekyll_pid=""

start() {
  bundle exec jekyll serve -l -H localhost &
  jekyll_pid=$!
}

stop() {
  if [[ -n "$jekyll_pid" ]]; then
    kill "$jekyll_pid" 2>/dev/null || true
    # Block until it's really gone, so the next start doesn't hit "Address already in use".
    wait "$jekyll_pid" 2>/dev/null || true
  fi
}

trap 'echo ""; echo "==> stopping"; stop; exit 0' INT TERM

start
stamp=$(stat -f %m _config.yml)

while true; do
  sleep 1
  current=$(stat -f %m _config.yml)
  if [[ "$current" != "$stamp" ]]; then
    stamp="$current"
    echo ""
    echo "==> _config.yml changed - restarting Jekyll (takes a few seconds)..."
    stop
    start
  fi
done
