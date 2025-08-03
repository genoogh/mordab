#!/bin/bash

# Constants
SUCCESS="✓"
FAILURE="x"

# Function to preload an item and display status
preload_item() {
  if [[ -f "$1" ]]; then
    export LD_PRELOAD="$LD_PRELOAD:$1"
    echo "• Status: Preloading $SUCCESS"
  else
    echo "• Status: Preloading $FAILURE (File not found)"
  fi
  echo "• Object: $1"
  echo ""
}

# Preload EGL Library
echo "Preloading EGL Library"
count=0

# Loop through egl_lib64 array
for egl_lib in /system/vendor/lib/egl/*; do
  count=$((count + 1))
  preload_item "$egl_lib"
done

exit 0