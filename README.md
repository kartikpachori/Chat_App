# Chat Application
Chat is a real-time messaging application built using Flutter. Users can log in, register, view a list of registered users, and chat with any user. The application supports sending text messages and photos.

# Features

- **User Registration**: New users can register by providing their email, username, and password.
- **User Login**: Registered users can log in to access the chat functionality.
- **View Users**: Users can see a list of all registered users.
- **Chat**: Users can send text messages and photos to any registered user.
- **Profile Management**: Users can update their profile information and view their chat history.

## Technologies Used
- Frontend: Flutter, Dart
- Backend: Node.js, Express.js, Firebase Firestore
- APIs: RESTful API for user authentication, user management, and messaging

### Setup Instructions
1. Clone the repository: git clone <repository-url>
2. Navigate to the project directory: cd chat_application
3. Install dependencies: flutter pub get
4. Set up Firebase:
5. Create a Firebase project.
6. Enable Firestore and Authentication in the Firebase console.
7. Download google-services.json (for Android) and GoogleService-Info.plist (for iOS) and place them in the appropriate directories.
8. Run the application: flutter run

## API Endpoints
- POST /api/users/register: Register a new user.
- POST /api/users/login: Log in a user.
- GET /api/users: Get a list of all registered users.
- POST /api/messages: Send a new message.
- GET /api/messages/:userId: Get all messages for a specific user.
- POST /api/messages/photos: Send a photo message.

## Directory Structure

lib/
- |-- models/           # Data models for user and message
- |-- screens/          # UI screens for login, registration, user list, chat
- |-- services/         # Services for authentication, messaging, and photo upload
- |-- widgets/          # Reusable UI components
- |-- main.dart         # Entry point of the application

### Future Enhancements
- Group Chats: Allow users to create and join group chats.
- Typing Indicators: Show when a user is typing.
- Read Receipts: Show message read receipts.
- Push Notifications: Send push notifications for new messages.
- Status Updates: Allow users to post status updates.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.



##Screenshot

<span>
<img src="https://github.com/kartikpachori/Chat_App/blob/main/assets/images/Pick1.jpg" width="18%" height="45%">
<img src="https://github.com/kartikpachori/Chat_App/blob/main/assets/images/Pick2.jpg" width="18%" height="45%">
<img src="https://github.com/kartikpachori/Chat_App/blob/main/assets/images/Pick3.jpg" width="18%" height="45%">
<img src="https://github.com/kartikpachori/Chat_App/blob/main/assets/images/Pick4.jpg" width="18%" height="45%">
</span>
