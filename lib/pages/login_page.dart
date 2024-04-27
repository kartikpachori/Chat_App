import 'package:chatapp/Widgets/custom_form_field.dart';
import 'package:chatapp/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    Widget _headerText() {
      return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Welcome Back!",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              "Hello again you've beem missed",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      );
    }

    Widget _loginButton() {
      return SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: MaterialButton(
          onPressed: () {
            if (_loginFormKey.currentState?.validate() ?? false) {
              print("WOOOHO");
            }
          },
          color: Theme.of(context).colorScheme.primary,
          child: const Text('Login', style: TextStyle(color: Colors.white)),
        ),
      );
    }

    Widget _createAnAccountLink() {
      return const Expanded(
          child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("Don't have an account ?"),
          Text(
            "Sign Up",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ],
      ));
    }

    Widget _loginForm() {
      return Container(
        height: MediaQuery.sizeOf(context).height * 0.40,
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.05,
        ),
        child: Form(
          key: _loginFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomFormField(
                height: MediaQuery.sizeOf(context).height * 0.1,
                hintText: 'Email',
                validationRegEx: EMAIL_VALIDATION_REGEX,
              ),
              CustomFormField(
                height: MediaQuery.sizeOf(context).height * 0.1,
                hintText: 'Password',
                validationRegEx: PASSWORD_VALIDATION_REGEX,
                obscureText: true,
              ),
              _loginButton(),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 20.0,
        ),
        child: Column(
          children: [
            _headerText(),
            _loginForm(),
            _createAnAccountLink(),
          ],
        ),
      ),
    );
  }
}
