# Firebase wrapper for MacOS

Wrapper for CocoaPods based frameworks to submodule dependency style.

## Usage

- Link to everything in "Export" folder
- Add this to your "always run" code(AppDelegate, main, etc.)
```swift
import FirebaseCore
import FirebaseCrashlytics

FirebaseApp.configure()
```
- Add this to your .xconfig or project settings
```
FIREBASE_PATH = ${SRCROOT}/../Firebase/Export // Your path may be diferent depending on submodule folder
FRAMEWORK_SEARCH_PATHS = $(inherited) ${FIREBASE_PATH}/
```
- Add GoogleService-Info.plist from https://console.firebase.google.com/
to your project bundle Resources
- Add "execute script" phase to build phases with such content
```
if [ "$CONFIGURATION" == "Release" ]; then
    ${FIREBASE_PATH}/run
fi
```

## Update

To update or add new Firebase frameworks you need to modify Podfile 
and run this in a folder with the project:
```
$ pod install --repo-update
$ pod update
$ open CrashlyticsTest.xcworkspace
```

Then build target CrashlyticsTest and copy frameworks from DerivedData
to /Export folder in the root of the repository.

## Why wrapper?

To use git submodules dependency system. 
