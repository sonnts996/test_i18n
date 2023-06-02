library login;

import 'package:flutter/material.dart';
import 'package:login/l10n/app_localizations.dart';
import 'package:login/login_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Localizations.override(
        context: context,
        locale: const Locale('en'),
        delegates: const [AppLocalizations.delegate],
        child: Builder(builder: (context) {
          return LoginView(text: AppLocalizations.of(context));
        }));
  }
}
