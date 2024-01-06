import 'package:flutter/material.dart';

import 'package:mitch/pages/login_page.dart';
import 'package:mitch/pages/register_page.dart';


class LoginOrResigter extends StatefulWidget {
  const LoginOrResigter({super.key});

  @override
  State<LoginOrResigter> createState() => _LoginOrResigterState();
}

class _LoginOrResigterState extends State<LoginOrResigter> {

  bool showLoginPage = true;

  void togglePages () {
    setState ((){
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage (onTap: togglePages);
    } else {
      return RegisterPage (onTap: togglePages);
    }
  }
}
