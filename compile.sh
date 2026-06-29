#!/usr/bin/env bash
set -euo pipefail

MAIN_FILE="${1:-main.tex}"
MAIN_NAME="${MAIN_FILE%.tex}"
BUILD_DIR="build"

if [[ ! -f "$MAIN_FILE" ]]; then
  echo "Error: no se encontró $MAIN_FILE"
  exit 1
fi

mkdir -p "$BUILD_DIR"
echo "Compilando presentación: $MAIN_FILE"

if command -v latexmk >/dev/null 2>&1; then
  latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir="$BUILD_DIR" "$MAIN_FILE"
else
  lualatex -interaction=nonstopmode -halt-on-error -output-directory="$BUILD_DIR" "$MAIN_FILE"
  if command -v biber >/dev/null 2>&1; then
    biber --input-directory "$BUILD_DIR" --output-directory "$BUILD_DIR" "$MAIN_NAME" || true
  else
    echo "Advertencia: biber no está instalado; la bibliografía puede no compilar."
  fi
  lualatex -interaction=nonstopmode -halt-on-error -output-directory="$BUILD_DIR" "$MAIN_FILE"
  lualatex -interaction=nonstopmode -halt-on-error -output-directory="$BUILD_DIR" "$MAIN_FILE"
fi

cp "$BUILD_DIR/$MAIN_NAME.pdf" "$MAIN_NAME.pdf"
echo "Compilación finalizada: $MAIN_NAME.pdf"
