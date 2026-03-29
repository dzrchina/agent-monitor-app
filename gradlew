#!/bin/sh
# gradlew - Gitee-compatible gradle wrapper script

# Detect the operating system
OS_NAME=$(uname -s | tr '[:upper:]' '[:lower:]')
if [ "$OS_NAME" = "linux" ]; then
    GRADLE_DIR="/data/android/gradle-zip"
elif [ "$OS_NAME" = "darwin" ]; then
    GRADLE_DIR="./gradle/wrapper"
else
    GRADLE_DIR="./gradle/wrapper"
fi

# Set the gradle wrapper jar location
GRADLE_WRAPPER_JAR="$GRADLE_DIR/gradle-wrapper.jar"

# Determine the command to execute
CMD="./gradlew"
if [ ! -f "./gradlew" ]; then
    CMD="gradle"
fi

# Execute the gradle command with all passed arguments
exec $CMD "$@"