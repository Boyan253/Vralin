# Flutter Instagram Clone - Complete Setup Guide

## ⚠️ Prerequisites Checklist

Before you can run this project, you need to complete the following steps:

### 1. Install Flutter SDK

Flutter is not currently installed on your system. Follow these steps:

#### For Windows:
1. Download Flutter SDK from: https://docs.flutter.dev/get-started/install/windows
2. Extract the zip file to a location like `C:\src\flutter`
3. Add Flutter to your PATH:
   - Search for "Environment Variables" in Windows
   - Edit the "Path" variable
   - Add the full path to `flutter\bin` (e.g., `C:\src\flutter\bin`)
4. Restart PowerShell/Command Prompt
5. Verify installation: `flutter --version`

#### Quick Install Commands:
```powershell
# Using Chocolatey (if installed)
choco install flutter

# Or using winget
winget install --id=Google.Flutter -e
```

### 2. Install Required Tools

```powershell
# Verify Flutter installation and check for missing dependencies
flutter doctor

# Install any missing dependencies shown by flutter doctor
# Common requirements:
# - Android Studio (for Android development)
# - Visual Studio (for Windows development)
# - Xcode (for iOS/macOS development, Mac only)
# - Git
```

### 3. Firebase Configuration

This app requires Firebase backend. You need to:

#### Option A: Use FlutterFire CLI (Recommended)
```powershell
# Install Firebase CLI
npm install -g firebase-tools

# Login to Firebase
firebase login

# Activate FlutterFire CLI
dart pub global activate flutterfire_cli

# Configure Firebase for this project
flutterfire configure
```

When running `flutterfire configure`:
- Select "Create a new project"
- Name it (e.g., `my-instagram-clone`)
- Select platforms: `android`, `ios`, `web` (deselect macOS for now)

#### Option B: Manual Firebase Setup
1. Go to https://console.firebase.google.com/
2. Create a new project
3. Enable the following services:
   - **Authentication** (Email/Password)
   - **Firestore Database** (set rules to `allow read, write: if true;` for testing)
   - **Storage** (set rules to `allow read, write: if true;` for testing)
   - **Cloud Messaging**

#### Get Firebase Cloud Messaging Key:
1. Go to Firebase Console → Project Settings → Cloud Messaging
2. Copy the "Server key"
3. Open `lib/core/utility/private_keys.dart`
4. Replace `YOUR_FIREBASE_MESSAGING_SERVER_KEY_HERE` with your key
   ```dart
   const String notificationKey = "key=YOUR_ACTUAL_KEY_HERE";
   ```

### 4. Agora Configuration (for Video Calling)

This app uses Agora for video/voice calling:

1. Go to https://www.agora.io/en/
2. Sign up for a free account
3. Go to https://console.agora.io/projects
4. Click "Create a Project"
5. Enter a project name and select "Testing mode: APP ID"
6. Copy the App ID
7. Open `lib/core/utility/private_keys.dart`
8. Replace `YOUR_AGORA_APP_ID_HERE` with your App ID
   ```dart
   const String agoraAppId = "YOUR_ACTUAL_AGORA_APP_ID";
   ```

### 5. Install Project Dependencies

```powershell
# Navigate to project directory (if not already there)
cd D:\Work\flutter-clean-architecture-instagram

# Get all dependencies
flutter pub get
```

### 6. Run the Application

```powershell
# Check connected devices
flutter devices

# Run on Chrome (Web)
flutter run -d chrome

# Run on Android device/emulator
flutter run -d android

# Run on Windows
flutter run -d windows
```

## 🎯 Quick Start (After Flutter Installation)

```powershell
# 1. Install dependencies
flutter pub get

# 2. Run the app
flutter run
```

## 📱 Testing Without Firebase/Agora

If you want to test the app structure without setting up external services:

1. You can skip Firebase and Agora setup initially
2. The app will fail when trying to authenticate or make video calls
3. But you can still explore the code structure and UI

## ⚠️ Current Status

✅ Project cloned  
❌ Flutter SDK not installed  
⚠️ Firebase configuration needed  
⚠️ Agora configuration needed  
⚠️ Dependencies not installed  

## 🔧 Troubleshooting

### "flutter: The term 'flutter' is not recognized"
- Flutter is not in your PATH
- Restart your terminal after installing Flutter
- Verify with: `flutter --version`

### "Firebase initialization failed"
- Run `flutterfire configure` to set up Firebase
- Or manually add Firebase configuration files

### "Agora connection failed"
- Update the `agoraAppId` in `lib/core/utility/private_keys.dart`

### Build errors
- Run `flutter clean`
- Run `flutter pub get`
- Try again

## 📚 Additional Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Firebase Setup Guide](https://firebase.google.com/docs/flutter/setup)
- [Agora Flutter Documentation](https://docs.agora.io/en/video-calling/get-started/get-started-sdk?platform=flutter)

## 🤝 Need Help?

Check the original README.md for detailed visual guides with screenshots for Firebase and Agora setup.

