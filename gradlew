#!/bin/bash
# Driver Tracker - Gradle Wrapper
# This script delegates to system gradle (required for GitHub Actions)

GRADLE_CMD=$(which gradle 2>/dev/null)
if [ -z "$GRADLE_CMD" ]; then
    echo "ERROR: Gradle not found in PATH."
    echo "Please install Gradle: sudo apt-get install -y gradle"
    exit 1
fi

exec gradle "$@"
