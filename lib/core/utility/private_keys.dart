/// Private API Keys Configuration
/// 
/// IMPORTANT: This file contains API keys for external services.
/// You need to replace these placeholder values with your actual keys:
///
/// 1. Firebase Cloud Messaging Server Key:
///    - Go to Firebase Console > Project Settings > Cloud Messaging
///    - Copy the "Server key" from Cloud Messaging API
///    - Replace the notificationKey value below
///
/// 2. Agora App ID:
///    - Go to https://www.agora.io/en/
///    - Create an account and project
///    - Copy the App ID from your project
///    - Replace the agoraAppId value below

/// Firebase Cloud Messaging Server Key
/// Get this from: Firebase Console > Project Settings > Cloud Messaging > Server key
const String notificationKey = "key=YOUR_FIREBASE_MESSAGING_SERVER_KEY_HERE";

/// Agora App ID for video/voice calling
/// Get this from: https://console.agora.io/projects
const String agoraAppId = "YOUR_AGORA_APP_ID_HERE";

