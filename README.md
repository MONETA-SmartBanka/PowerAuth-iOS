# PowerAuth-iOS

## From repo https://github.com/wultra/powerauth-mobile-sdk

### PowerAuth2

Build

```
xcodebuild archive -project proj-xcode/PowerAuthLib.xcodeproj -scheme "PA2_Release_iOS" -archivePath Archive-iOS -sdk iphoneos ARCHS="arm64 armv7" SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive -project proj-xcode/PowerAuthLib.xcodeproj -scheme "PA2_Release_iOS" -archivePath Archive-iOSSim -sdk iphonesimulator ARCHS="arm64 x86_64 i386" SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcodebuild archive -project proj-xcode/PowerAuthLib.xcodeproj -scheme "PA2_Release_iOS" -archivePath Archive-macCatalyst -sdk macosx ARCHS="arm64 x86_64" SKIP_INSTALL=NO BUILD_LIBRARIES_FOR_DISTRIBUTION=YES SUPPORTS_MACCATALYST=YES
```

Create xcframework

```
xcodebuild -create-xcframework \
 -framework Archive-iOS.xcarchive/Products/Library/Frameworks/PowerAuth2.framework \
 -framework Archive-iOSSim.xcarchive/Products/Library/Frameworks/PowerAuth2.framework \
 -framework Archive-macCatalyst.xcarchive/Products/Library/Frameworks/PowerAuth2.framework \
 -output PowerAuth2.xcframework
```

### Extension

```
tomas@Tomass-MacBook-Pro powerauth-mobile-sdk % ./scripts/ios-build-extensions.sh --out-dir Build extensions
```

### Watch

```
tomas@Tomass-MacBook-Pro powerauth-mobile-sdk % ./scripts/ios-build-extensions.sh --out-dir Build watchos
```

### WultraSSLPinning


