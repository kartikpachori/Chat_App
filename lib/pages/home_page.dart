import 'package:chatapp/services/alert_service.dart';
import 'package:chatapp/services/auth_service.dart';
import 'package:chatapp/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GetIt _getIt = GetIt.instance;

  late AuthService _authService;
  late NavigationService _navigationService;
  late AlertService _alertService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _authService = _getIt.get<AuthService>();
    _navigationService = _getIt.get<NavigationService>();
    _alertService = _getIt.get<AlertService>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
        actions: [
          IconButton(
            onPressed: () async {
              bool result = await _authService.logout();
              if (result) {
                _alertService.showToast(
                    text: "Successfully logged out!!", icon: Icons.check);
                _navigationService.pushReplacementNamed("/login");
              }
            },
            color: Colors.red,
            icon: const Icon(
              Icons.logout,
            ),
          ),
        ],
      ),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
      ),
    );
  }
}
