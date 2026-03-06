#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
SITE_DIR="$ROOT_DIR/site"
DIST_DIR="$ROOT_DIR/dist"
DOCS_DIR="$ROOT_DIR/docs"

rm -rf "$DIST_DIR"
rm -rf "$DOCS_DIR"
mkdir -p "$DIST_DIR"
mkdir -p "$DOCS_DIR"
cp -R "$SITE_DIR"/* "$DIST_DIR"/
cp -R "$DIST_DIR"/* "$DOCS_DIR"/
cp -R "$DIST_DIR"/*.html "$ROOT_DIR"/
touch "$DOCS_DIR/.nojekyll"

echo "Build complete:"
echo "  - $DIST_DIR"
echo "  - $DOCS_DIR"
echo "  - root HTML files refreshed"
