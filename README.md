
# Flutter Project README

## Overview

This repository contains a Flutter project that follows standard Flutter setup guidelines. The project is designed to be consistent across all devices and adheres to the specified UX/UI design.

## Prerequisites

Before you can run this Flutter project, ensure you have the following installed on your machine:

- **Flutter SDK:** Follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) to install Flutter.
- **Android Studio:** Required for Android development. Download it from the [official website](https://developer.android.com/studio).
- **Xcode:** Required for iOS development (macOS only). Install it from the [Mac App Store](https://apps.apple.com/us/app/xcode/id497799835).
- **Git:** For version control. Download it from the [official website](https://git-scm.com/).

## Setup

### 1. Clone the Repository

Open your terminal and clone the repository to your local machine:

```bash
git clone https://github.com/Her-Droid/korea-marketplace.git
cd your-flutter-project
```

### 2. Install Dependencies

Navigate to the project directory and install the required dependencies:

```bash
flutter pub get
```

### 3. Configure Environment

Ensure that your environment is properly configured for Flutter development:

- **Android:** Open Android Studio and configure the Android SDK.
- **iOS:** Open Xcode and ensure that the command line tools are installed:

```bash
xcode-select --install
```

### 4. Connect a Device or Emulator

You can run the app on a physical device or an emulator:

- **Physical Device:**
    - Enable USB debugging on your Android device.
    - Connect the device to your computer via USB.
    - For iOS, connect your device to your Mac and trust the connection.
- **Emulator:**
    - **Android:** Launch an Android emulator from Android Studio.
    - **iOS:** Launch an iOS simulator from Xcode.

## Running the App

### 1. Run on Android

To run the app on an Android device or emulator, use the following command:

```bash
flutter run -d android
```

### 2. Run on iOS

To run the app on an iOS device or simulator, use the following command:

```bash
flutter run -d ios
```

### 3. Build the APK

To build a release APK for Android, use the following command:

```bash
flutter build apk --release
```

The APK will be located in the `build/app/outputs/flutter-apk/app-release.apk` directory.

### 4. Build the IPA

To build a release IPA for iOS, use the following command:

```bash
flutter build ios --release
```

The IPA can be found in the `build/ios/ipa` directory.

## Additional Information

### Project Structure:

- `lib/`: Contains the main Dart source files.
- `assets/`: Contains static assets like images and fonts.
- `pubspec.yaml`: Defines the project dependencies and metadata.

### Dependencies:

All dependencies are listed in the `pubspec.yaml` file. You can add new dependencies by modifying this file and running `flutter pub get`.

### Environment Variables:

If your project requires environment variables, ensure they are set in the appropriate configuration files.

## Troubleshooting

### Common Issues:

- **Missing Dependencies:** Run `flutter pub get` to install missing dependencies.
- **Device Not Found:** Ensure your device is properly connected and recognized by Flutter.
- **Build Errors:** Check the terminal output for error messages and resolve them accordingly.

### Flutter Doctor:

Use `flutter doctor` to check for any issues with your Flutter installation and environment setup.

## Contributing

Contributions are welcome! Please follow these steps to contribute:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them.
4. Push your changes to your fork.
5. Submit a pull request to the main repository.


## Project Version

- **Flutter Version:** 3.24.5
    - Channel: stable
    - Framework Revision: dec2ee5c1f (4 months ago)
    - Engine Revision: a18df97ca5
- **Dart Version:** 3.5.4
- **DevTools:** 2.37.3
- **Flutter Environment:**
    - Flutter (Channel stable, 3.24.5, on macOS 14.4.1 23E224 darwin-arm64, locale en-ID)
    - Android toolchain - develop for Android devices (Android SDK version 35.0.1)
    - Xcode - develop for iOS and macOS (Xcode 15.3)
    - Android Studio (version 2024.2)
    - IntelliJ IDEA Ultimate Edition (version 2024.3)
    - VS Code (version 1.88.1)
