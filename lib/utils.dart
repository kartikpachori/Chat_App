import 'package:chatapp/firebase_options.dart';
import 'package:chatapp/services/alert_service.dart';
import 'package:chatapp/services/auth_service.dart';
import 'package:chatapp/services/media_services.dart';
import 'package:chatapp/services/navigation_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

// Future<void> setupFirebase() async {
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
// }
bool _firebaseInitialized = false;

Future<void> setupFirebase() async {
  if (!_firebaseInitialized) {
    await Firebase.initializeApp(
      name: 'YourAPP',
      options: DefaultFirebaseOptions.currentPlatform,
    );
    _firebaseInitialized = true;
  } else {
    print('Firebase already initialized');
  }
}

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;
  getIt.registerSingleton<AuthService>(
    AuthService(),
  );
  getIt.registerSingleton<NavigationService>(
    NavigationService(),
  );
  getIt.registerSingleton<AlertService>(
    AlertService(),
  );
  getIt.registerSingleton<MediaService>(
    MediaService(),
  );
}
