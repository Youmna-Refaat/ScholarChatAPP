# ScholarChatApp: Messaging App for Academics

**ScholarChatApp** is a messaging application designed to enhance communication between scholars, researchers, and students in academic environments. It provides features for easy messaging, notifications, and information sharing within academic communities.

## Features

* **User Registration & Authentication:** Securely sign up and log in using Firebase Authentication.
* **Real-time Messaging:** Send and receive messages with Firebase Cloud Messaging (FCM).
* **Alert Notifications:** Get instant alerts for academic events or new messages.
* **Chat History:** Keep track of all conversations with your peers.
* **Firebase Integration:** Leverages Firebase for user authentication, data storage, and messaging functionalities.

## Requirements

* Flutter SDK (latest stable version)
* Dart SDK (compatible version with Flutter)
* Firebase account (for Authentication, Firestore, Cloud Messaging)

## Installation

### Step 1: Clone the Repository

```bash
git clone [URL]
cd ScholarChatAPP
```
### Step 2:  Set up Firebase

*Go to the Firebase Console (https://console.firebase.google.com/).
*Create a new project and enable Firebase Authentication, Firestore, and Firebase Cloud Messaging.
*Download the google-services.json file and place it in the android/app directory.   
*(Optional) Add Firebase SDK configurations for iOS if applicable.

### Step 3: Install dependencies

```bash
flutter pub get
```
### Step 4: Run the app

```bash
flutter run
```
## Usage

This app allows you to:

* **User Authentication:** Register for a new account or log in using your email and password.
* **Real-Time Messaging:** Access the chat screen to send and receive messages with other users instantly.
* **Notifications:** Stay informed about new messages or app updates with notification alerts.

## Project Structure

The project uses a well-organized structure for better maintainability:

**lib/** (Core Flutter application code)
  * **models/**: Contains data models like `User`, `Message`, etc.
  * **screens/**: Holds all the different screens used in the app (login, chat, etc.).
  * **services/**: Provides access to Firebase services and helper functions.
  * **widgets/**: Includes reusable UI components for consistent design throughout the app.

**android/**: Contains Android-specific code and configurations for the app.
**(ios/)** (Optional): If applicable, includes iOS-specific code and configurations for the app build.

## Contributing

We welcome contributions to this project! Here's how you can get involved:

1. **Fork the Repository:** Create your own copy of the project on GitHub.
2. **Create a Branch:** Use the command `git checkout -b feature-name` to create a new branch for your specific feature or bug fix.
3. **Make Your Changes:** Implement your changes and ensure they adhere to the project's coding standards.
4. **Commit Your Changes:** Commit your changes with a descriptive message using `git commit -am 'Your commit message'`.
5. **Push to Your Branch:** Push your changes to your remote branch with `git push origin feature-name`.
6. **Open a Pull Request:**  Submit your changes back to the main project by creating a pull request.

## License

This project is licensed under the MIT License. 
