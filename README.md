# Firebase wrapper for MacOS

Wrapper for CocoaPods based frameworks to submodule dependency style.

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

Clario desktop uses submodules and CocoaPods needs to be integrated in
target workspace to work.