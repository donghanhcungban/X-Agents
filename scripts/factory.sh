#!/usr/bin/env bash
# Bộ điều phối có runtime riêng; các hook của hub tiếp tục dùng bản đã kiểm cùng hub.
set -euo pipefail
cd -- "$(dirname -- "$0")/.."
root=$(pwd -P)
sdk=.xtemplates/factory
git submodule update --init --checkout --depth 1 -- "$sdk" >&2
export CLAUDE_PROJECT_DIR="$root"
if [[ ${1:-flow} == flow ]]; then
  if (( $# )); then shift; fi
  exec uv run --no-project --python 3.15.2 python "$sdk/scripts/xt_flow.py" --project "$root" "$@"
fi
exec uv run --no-project --python 3.15.2 python "$sdk/scripts/xt.py" "$@"
