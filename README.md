# Flutter Chat App

A real-time chat application built with Flutter and Firebase backend. This app enables users to communicate through instant messaging while providing secure authentication and real-time message delivery.

## Features

- **User Authentication**
  - Email and password sign-up/login
  - User profile with avatar image upload
  - Secure authentication using Firebase Auth

- **Real-time Chat**
  - Instant message delivery
  - Message bubbles with user identification
  - Push notifications for new messages
  - User online/offline status

- **Media Sharing**
  - Profile picture upload using device camera or gallery
  - Image storage using Firebase Storage

## Screenshots

<img src="https://user-images.githubusercontent.com/92157668/210002004-fa470581-54f0-4743-8844-6abafcab2e5b.jpg" width="300" height="600"> <img src="https://user-images.githubusercontent.com/92157668/210003010-edbf50ca-7e8a-4678-825a-4cc60f8ba5d1.jpg" width="300" height="600">

## Technologies Used

- Flutter SDK
- Firebase Core ^1.10.2
- Firebase Auth ^3.11.1
- Cloud Firestore ^3.5.0
- Firebase Storage ^8.0.0
- Firebase Messaging ^11.0.0
- Image Picker ^0.8.6

## Getting Started

### Prerequisites

- Flutter SDK
- Firebase account and project setup
- Android Studio/VS Code with Flutter plugins

### Installation

1. Clone the repository
```bash
git clone [repository-url]
cd chat-app
```

2. Install dependencies
```bash
flutter pub get
```

3. Configure Firebase
   - Create a new Firebase project
   - Add Android/iOS apps in Firebase console
   - Download and add the configuration files (google-services.json/GoogleService-Info.plist)
   - Enable Authentication, Cloud Firestore, and Storage in Firebase Console

4. Run the app
```bash
flutter run
```

## Project Structure

- `lib/screens/` - Main screen implementations
  - `auth_screen.dart` - Authentication screen
  - `chat_screen.dart` - Main chat interface
  - `splash_screen.dart` - Loading screen

- `lib/widgets/` - Reusable UI components
  - `auth/` - Authentication related widgets
  - `chat/` - Chat related widgets
  - `pickers/` - Image picker widgets

## Features in Detail

### Authentication
- Secure sign-up and login using Firebase Authentication
- Profile picture upload during registration
- User data storage in Cloud Firestore

### Chat Functionality
- Real-time message synchronization
- Push notifications for new messages
- User presence tracking
- Message bubbles with sender information

### UI/UX
- Material Design implementation
- Responsive layout
- Custom theme with pink and purple accent colors
- Intuitive navigation and user flow

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

