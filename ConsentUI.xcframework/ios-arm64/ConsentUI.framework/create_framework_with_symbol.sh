#!/bin/sh

#  create_framework.sh
#  ConsentCore
#
#  Created by Rohan Chavda on 25/07/24.
#
set -e  # Exit immediately if a command exits with a non-zero status
set -x  # Print commands and their arguments as they are executed

unset MACOSX_DEPLOYMENT_TARGET
unset TVOS_DEPLOYMENT_TARGET
unset WATCHOS_DEPLOYMENT_TARGET
unset DRIVERKIT_DEPLOYMENT_TARGET

# Define variables
PROJECT_NAME="ConsentUI"
SCHEME_NAME="ConsentUI"
SRCROOT="$(pwd)"
BUILD_DIR="${SRCROOT}/build"
IOS_SIMULATOR_ARCHIVE_PATH="$BUILD_DIR/${PROJECT_NAME}-iOS_Simulator.xcarchive"
IOS_DEVICES_ARCHIVE_PATH="$BUILD_DIR/${PROJECT_NAME}-iOS_Devices.xcarchive"
XCFRAMEWORK_PATH="$BUILD_DIR/${PROJECT_NAME}.xcframework"

# Clean previous build artifacts
rm -rf "$BUILD_DIR"

# Build for iOS Simulator
xcodebuild archive \
    -project "${SRCROOT}/${PROJECT_NAME}.xcodeproj" \
    -scheme "$SCHEME_NAME" \
    -configuration Release \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "$IOS_SIMULATOR_ARCHIVE_PATH" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    DEBUG_INFORMATION_FORMAT=dwarf-with-dsym

# Build for iOS Devices
xcodebuild archive \
    -project "${SRCROOT}/${PROJECT_NAME}.xcodeproj" \
    -scheme "$SCHEME_NAME" \
    -configuration Release \
    -destination "generic/platform=iOS" \
    -archivePath "$IOS_DEVICES_ARCHIVE_PATH" \
    SKIP_INSTALL=NO \
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
    DEBUG_INFORMATION_FORMAT=dwarf-with-dsym

# Set read and write permissions for archives
chmod +rw "$IOS_SIMULATOR_ARCHIVE_PATH"
chmod +rw "$IOS_DEVICES_ARCHIVE_PATH"

# module name
MODULE_NAME="ConsentUI"

# Create XCFramework
xcodebuild -create-xcframework \
    -framework "$IOS_SIMULATOR_ARCHIVE_PATH/Products/Library/Frameworks/${MODULE_NAME}.framework" \
    -debug-symbols "$IOS_SIMULATOR_ARCHIVE_PATH/dSYMs/${MODULE_NAME}.framework.dSYM" \
    -framework "$IOS_DEVICES_ARCHIVE_PATH/Products/Library/Frameworks/${MODULE_NAME}.framework" \
    -debug-symbols "$IOS_DEVICES_ARCHIVE_PATH/dSYMs/${MODULE_NAME}.framework.dSYM" \
    -output "$XCFRAMEWORK_PATH"

echo "Universal framework created at $XCFRAMEWORK_PATH"
