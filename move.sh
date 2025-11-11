SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPT_NAME="move.sh"
SCRIPT_PATH="$SCRIPT_DIR/$SCRIPT_NAME"
TARGET_DIR="$(pwd)"

shopt -s dotglob nullglob

for item in "$SCRIPT_DIR"/* "$SCRIPT_DIR"/.*; do
  if [[ "$(basename "$item")" == "." || "$(basename "$item")" == ".." || "$(basename "$item")" == "$SCRIPT_NAME" ]]; then
    continue
  fi
  mv "$item" "$TARGET_DIR"/
done

rm -rf "$SCRIPT_DIR"

echo "Template is ready ✅"
